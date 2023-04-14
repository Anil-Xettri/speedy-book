import 'package:get/get.dart';
import 'package:speedy_book/model/booking.dart';
import 'package:speedy_book/repo/booking/booking_repo.dart';
import 'package:speedy_book/utils/custom_snackbar.dart';

class BookingController extends GetxController {
  RxBool isLoading = RxBool(false);
  RxList<Booking> bookings = RxList<Booking>();

  @override
  void onInit() {
    getBookings();
    super.onInit();
  }

  void getBookings() async {
    isLoading.value = true;

    await BookingRepo.getBookings(
      onSuccess: (bookings) {
        isLoading.value = false;
        this.bookings.addAll(bookings);
      },
      onError: (message) {
        isLoading.value = false;
        CustomSnackBar.error(message: message);
      },
    );
  }
}
