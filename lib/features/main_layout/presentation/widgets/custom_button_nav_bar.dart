import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'button_nav_item.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Sizes.s90,
      padding: const EdgeInsets.only(left: Sizes.s10, right: Sizes.s10),
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.transparent.withValues(alpha: 0.11),
            blurRadius: Sizes.s4,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomNavItem(
            index: 0,
            currentIndex: currentIndex,
            iconPath: AppIcons.homeRoof,
            activeIconPath: AppIcons.homeRoofFilld,
            label: LocaleKeys.home.tr(),
            onTap: onTap,
          ),
          BottomNavItem(
            index: 1,
            currentIndex: currentIndex,
            iconPath: AppIcons.noteList,
            activeIconPath: AppIcons.noteListFilld,
            label: LocaleKeys.orders.tr(),
            onTap: onTap,
          ),
          BottomNavItem(
            index: 2,
            currentIndex: currentIndex,
            iconPath: AppIcons.heart,
            activeIconPath: AppIcons.heart,
            label: LocaleKeys.favorites.tr(),
            onTap: onTap,
          ),
          BottomNavItem(
            index: 3,
            currentIndex: currentIndex,
            iconPath: AppIcons.userAlt,
            activeIconPath: AppIcons.userAlt,
            label: LocaleKeys.profile.tr(),
            onTap: onTap,
          ),
        ],
      ),
    );
  }
}
