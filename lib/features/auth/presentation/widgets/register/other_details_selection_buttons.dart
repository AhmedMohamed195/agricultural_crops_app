import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

import '../../../../../core/utils/utils.dart';

class OtherDetailsSelectionButtons extends StatelessWidget {
  final bool? isSelected;
  final VoidCallback onTap;
  final String title;
  final String icon;
  const OtherDetailsSelectionButtons({
    super.key,
    this.isSelected,
    required this.onTap,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 120,
        width: 100,
        padding: const EdgeInsets.all(Sizes.s15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Sizes.s15),
          color: isSelected == true ? AppColors.lightGray10 : AppColors.white,
          border: Border.all(color: AppColors.lightGray25),
        ),
        child: Column(
          children: [
            SvgImage(icon, height: Sizes.s32, width: Sizes.s32),
            const Gap(Sizes.s10),
            Text(title.tr(), style: AppTextStyles.style16),
          ],
        ),
      ),
    );
  }
}
