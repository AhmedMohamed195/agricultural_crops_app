import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class BasketScreenFour extends StatefulWidget {
  const BasketScreenFour({super.key});

  @override
  State<BasketScreenFour> createState() => _BasketScreenFourState();
}

class _BasketScreenFourState extends State<BasketScreenFour> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.s24,
        vertical: Sizes.s100,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.background,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: AppColors.lightGray21, width: 1.5),
        ),
        height: Sizes.s170,
        width: Sizes.s340,
        child: SvgImage(AppIcons.visa),
      ),
    );
  }
}
