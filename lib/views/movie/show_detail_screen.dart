import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy_book/utils/date_time_helper.dart';
import 'package:speedy_book/widgets/selection_buttion.dart';

import '../../controller/movie_controller.dart';

class ShowDetailScreen extends StatelessWidget {
  final c = Get.find<MovieController>();
  ShowDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Select Date",
            style: textTheme.titleLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: c.showDates.length,
              itemBuilder: (context, index) {
                return Obx(
                  () => SelectionButton(
                    title: DateTimeHelper.dateMonth(
                        DateTime.parse(c.showDates[index])),
                    isActive: c.selectedDate.value == c.showDates[index],
                    onTap: () {
                      c.selectShowDate(c.showDates[index]);
                    },
                  ),
                );
              },
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            "Select Time",
            style: textTheme.titleLarge,
          ),
          const SizedBox(
            height: 12,
          ),
          SizedBox(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 8,
              itemBuilder: (context, index) {
                return SelectionButton(
                  title: "12:00 PM",
                  isActive: false,
                  onTap: () {},
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
