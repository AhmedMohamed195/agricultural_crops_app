import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import '../utils/utils.dart';
import 'svg_image.dart';

class MainButton extends StatelessWidget {
  const MainButton({
    super.key,
    this.onPressed,
    required this.label,
    this.width,
    this.height = Sizes.s50,
    this.backgroundColor,
    this.textColor,
    this.image,
    this.imageColor,
    this.borderColor,
    this.textStyle,
    this.reverse = false,
    this.elevation,
    this.icon,
  });

  final void Function()? onPressed;
  final String label;
  final double? width;
  final double? height;
  final Color? backgroundColor;
  final Color? textColor;
  final String? image;
  final Color? imageColor;
  final Color? borderColor;
  final TextStyle? textStyle;
  final double? elevation;
  final bool reverse;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          shadowColor: AppColors.transparent,
          backgroundColor:
              backgroundColor ?? AppColors.primary.withValues(alpha: 0.7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Sizes.s15),
            side: BorderSide(color: borderColor ?? AppColors.primary),
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: Sizes.s22,
            vertical: Sizes.s15,
          ),
        ),
        onPressed: onPressed,
        child: _buildContent(),
      ),
    );
  }

  Widget _buildContent() {
    final iconWidget = icon != null
        ? Icon(icon!.icon, color: icon!.color, size: icon!.size)
        : null;

    final imageWidget = image != null
        ? SvgImage(image!, color: imageColor)
        : null;

    final leadingWidget = imageWidget ?? iconWidget;

    if (leadingWidget == null) {
      return Text(
        label,
        style:
            textStyle ??
            AppTextStyles.style14.bold.copyWith(
              color: textColor ?? AppColors.white,
            ),
      );
    }

    final labelText = Flexible(
      child: Text(
        label,
        style:
            textStyle ??
            AppTextStyles.style14.copyWith(
              color: textColor ?? AppColors.white,
              fontWeight: FontWeight.w700,
            ),
      ),
    );

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: reverse
          ? [labelText, Gap(Sizes.s10.w), leadingWidget]
          : [leadingWidget, Gap(Sizes.s10.w), labelText],
    );
  }
}
