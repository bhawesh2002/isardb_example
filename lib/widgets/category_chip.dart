import 'package:flutter/material.dart';
import 'package:isar_example/theme/app_colors.dart';

class CategoryChip extends StatelessWidget {
  final String categoryName;
  final String? imgSrc;
  final Color? color;
  const CategoryChip(
      {super.key, required this.categoryName, this.imgSrc, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 6,
        horizontal: 6,
      ),
      decoration: BoxDecoration(
        color: color ?? AppColors.turquoise500,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Material(
            shape: const CircleBorder(),
            clipBehavior: Clip.antiAlias,
            color: AppColors.mystic50,
            child: SizedBox.square(
              dimension: 35,
              child: Image.network(
                imgSrc ??
                    "https://images.unsplash.com/photo-1504754524776-8f4f37790ca0?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 6,
          ),
          Text(
            categoryName,
            style: const TextStyle(
                fontSize: 16,
                color: AppColors.white,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(width: 4)
        ],
      ),
    );
  }
}
