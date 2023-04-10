import 'package:flutter/material.dart';
import 'package:speedy_book/utils/colors.dart';

class SelectionButton extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;
  const SelectionButton({
    super.key,
    required this.title,
    required this.isActive,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var textTheme = theme.textTheme;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        margin: const EdgeInsets.only(right: 20),
        decoration: BoxDecoration(
            color: isActive ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(50),
            border:
                isActive ? null : Border.all(color: AppColors.hintTextColor)),
        child: Text(
          title,
          style: textTheme.titleMedium!.copyWith(
              color: isActive ? Colors.black : AppColors.hintTextColor),
        ),
      ),
    );
  }
}
