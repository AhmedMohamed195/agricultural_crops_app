import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import '../../../../core/utils/utils.dart';

class BottomNavItem extends StatelessWidget {
  final int index;
  final int currentIndex;
  final String iconPath;
  final String activeIconPath;
  final String label;
  final ValueChanged<int> onTap;

  const BottomNavItem({
    super.key,
    required this.index,
    required this.currentIndex,
    required this.iconPath,
    required this.activeIconPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == currentIndex;
    final Color color = isSelected ? AppColors.primary : AppColors.lightGray37;
    final Color iconColor = isSelected
        ? AppColors.primary
        : AppColors.lightGray37;

    return GestureDetector(
      onTap: () => onTap(index),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: Sizes.s15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  isSelected ? activeIconPath : iconPath,
                  colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                  width: Sizes.s24,
                  height: Sizes.s24,
                  fit: BoxFit.scaleDown,
                ),
                const Gap(Sizes.s8),
                Text(
                  label,
                  style: AppTextStyles.style12.bold.copyWith(color: color),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
