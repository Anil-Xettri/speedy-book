import 'dart:developer';

import 'package:get/get.dart';
import 'package:khalti_flutter/khalti_flutter.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';
import 'package:speedy_book/model/booking.dart';
import 'package:speedy_book/repo/payment_repo.dart';
import 'package:speedy_book/utils/colors.dart';
import 'package:speedy_book/utils/custom_snackbar.dart';
import 'package:speedy_book/views/booking/booking_details.dart';

class PaymentController extends GetxController {
  Rxn<Booking> booking = Rxn<Booking>();
  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  @override
  void onInit() {
    var data = Get.arguments;
    booking.value = data[0];
    super.onInit();
  }

  void proceedPayment() {
    try {
      final config = PaymentConfig(
        // amount: int.parse(booking.value!.price!),
        amount: 1000,
        productIdentity: booking.value!.id.toString(),
        productName:
            "${booking.value!.vendor!.name!}-${booking.value!.movie!.title!}",
      );

      KhaltiScope.of(Get.context!).pay(
        config: config,
        preferences: [PaymentPreference.khalti],
        onSuccess: verifyKhaltiTransaction,
        onFailure: (value) {
          log("Khalti Fail =======>");
          log(value.message);
          log("Data ======>");
          log(value.data.toString());
        },
      );
    } catch (e, s) {
      log(e.toString());
      log(s.toString());
      CustomSnackBar.error(
          title: "Khalti", message: "Sorry something went wrong");
    }
  }

  void verifyKhaltiTransaction(PaymentSuccessModel result) async {
    loading.show(message: "Please wait ..", backgroundColor: AppColors.onBackGroundColor);

    await PaymentRepo.verifyKhaltiPayment(
      transactionId: booking.value!.id!,
      pidx: result.idx,
      amount: "10",
      token: result.token,
      onSuccess: (bookings, seat) {
        loading.hide();
        Get.offNamed(BookingDetailScreen.routeName, arguments: [bookings, seat]);
        CustomSnackBar.success();
      },
      onError: (message) {
        loading.hide();
      },
    );
  }
}
