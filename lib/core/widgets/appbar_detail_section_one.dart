import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class AppBarDetailSectionOne extends StatelessWidget
    implements PreferredSizeWidget {
  final String text;
  final String image1;
  final String image2;
  final void Function()? onTap;

  const AppBarDetailSectionOne({
    super.key,
    required this.text,
    required this.image1,
    required this.image2,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: preferredSize.height,
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: SafeArea(
        bottom: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: onTap,
              child: SvgImage(image1, height: Sizes.s24, width: Sizes.s24),
            ),
            Expanded(
              child: Center(child: Text(text, style: AppTextStyles.style21)),
            ),
            SvgImage(image2, height: Sizes.s24, width: Sizes.s24),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(Sizes.s140);
}
