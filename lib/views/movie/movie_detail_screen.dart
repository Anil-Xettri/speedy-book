import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:speedy_book/controller/movie_controller.dart';
import 'package:speedy_book/utils/colors.dart';
import 'package:speedy_book/utils/date_time_helper.dart';

class MovieDetailScreen extends StatelessWidget {
  final c = Get.find<MovieController>();
  MovieDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              c.movie.value?.description ?? "",
              style: textTheme.bodyMedium!,
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Information",
              style:
                  textTheme.titleMedium!.copyWith(color: AppColors.hintTextColor),
            ),
            const SizedBox(
              height: 8,
            ),
            DetailRow(
              title: "Duration",
              value: c.movie.value!.duration!,
            ),
            DetailRow(
              title: "Release Date",
              value: DateTimeHelper.dateWithYear(
                  DateTime.parse(c.movie.value!.releaseDate!)),
            )
          ],
        ),
      ),
    );
  }
}

class DetailRow extends StatelessWidget {
  final String title;
  final String value;
  const DetailRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: textTheme.bodyLarge,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: textTheme.bodyLarge!.copyWith(
                color: AppColors.hintTextColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}