import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy_book/controller/booking/booking_controller.dart';
import 'package:speedy_book/model/booking.dart';
import 'package:speedy_book/utils/colors.dart';
import 'package:speedy_book/utils/date_time_helper.dart';
import 'package:speedy_book/utils/image_path.dart';
import 'package:speedy_book/views/booking/booking_details.dart';
import 'package:speedy_book/widgets/row/booking_row.dart';

class BookingsScreen extends StatelessWidget {
  static const String routeName = "/bookings-screen";
  final c = Get.find<BookingController>();
  BookingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Obx(
            () {
              if (c.isLoading.value) {
                return const LinearProgressIndicator();
              } else {
                return Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    itemCount: c.bookings.length,
                    itemBuilder: (context, index) {
                      var booking = c.bookings[index];
                      return BookingRow(booking: booking);
                    },
                  ),
                );
              }
            },
          )
        ],
      ),
    );
  }
}
