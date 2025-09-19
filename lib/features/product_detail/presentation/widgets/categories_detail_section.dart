import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_text_styles.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class CategoriesDetailSection extends StatelessWidget {
  final String imagePath;
  final String text1;
  final String text2;

  const CategoriesDetailSection({
    super.key,
    required this.imagePath,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.s2,
        vertical: Sizes.s8,
      ),
      child: SizedBox(
        //color: Colors.amber,
        height: Sizes.s45,
        child: Row(
          children: [
            SvgImage(
              imagePath,
              height: Sizes.s35,
              width: Sizes.s35,
              fit: BoxFit.fill,
            ),

            Gap(Sizes.s15),
            Text(
              text1,
              style: AppTextStyles.style14.copyWith(
                fontWeight: FontWeight.w700,
                color: AppColors.almostBlack500,
              ),
            ),
            Spacer(),
            Text(
              text2,
              style: AppTextStyles.style14.copyWith(
                fontWeight: FontWeight.w400,
                color: AppColors.darkGray400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
