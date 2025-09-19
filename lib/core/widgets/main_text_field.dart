import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

import '../utils/utils.dart';

class MainTextField extends StatelessWidget {
  const MainTextField({
    super.key,
    this.controller,
    this.hintText,
    this.prefixIcon,
    this.prefixIconPath,
    this.suffixIcon,
    this.suffixIconPath,
    this.obscureText = false,
    this.maxLines = 1,
    this.validator,
    this.onChanged,
    this.onFieldSubmitted,
    this.textInputAction,
    this.inputFormatters,
    this.textCapitalization = TextCapitalization.none,
    this.trailingConstraints,
    this.onSaved,
    this.enabled,
    this.keyboardType,
    this.focusNode,
    this.isDense,
    this.initialValue,
    this.readOnly = false,
    this.maxLength,
    this.focusedBorder,
    this.textDirection,
    this.textAlign = TextAlign.start,
    this.autovalidateMode,
    this.labelColor,
    this.backgroundColor,
    this.hintColor,
    this.borderColor = AppColors.border,
    this.radius = 15,
    this.onTrailingPressed,
    this.prefixIconColor,
    this.suffixIconColor,
  });
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? hintText;
  final Color? hintColor;
  final Color? borderColor;
  final Widget? prefixIcon;
  final String? prefixIconPath;
  final Widget? suffixIcon;
  final BoxConstraints? trailingConstraints;
  final String? suffixIconPath;
  final bool obscureText;
  final int? maxLines;
  final bool? enabled;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String?>? onSaved;
  final TextInputAction? textInputAction;
  final List<TextInputFormatter>? inputFormatters;
  final TextCapitalization textCapitalization;
  final TextInputType? keyboardType;
  final bool? isDense;
  final String? initialValue;
  final bool readOnly;
  final int? maxLength;
  final InputBorder? focusedBorder;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final AutovalidateMode? autovalidateMode;
  final Color? labelColor;
  final Color? backgroundColor;
  final int? radius;
  final void Function()? onTrailingPressed;
  final Color? prefixIconColor;
  final Color? suffixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlign: textAlign,
      textDirection: textDirection,
      autovalidateMode: autovalidateMode,
      maxLength: maxLength,
      readOnly: readOnly,
      controller: controller,
      initialValue: initialValue,
      focusNode: focusNode,
      obscureText: obscureText,
      maxLines: maxLines,
      validator: validator,
      onChanged: onChanged,
      onSaved: onSaved,
      enabled: enabled,
      textCapitalization: textCapitalization,
      inputFormatters: inputFormatters,
      onFieldSubmitted: onFieldSubmitted,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          horizontal: Sizes.s13,
          vertical: Sizes.s14,
        ),
        isDense: true,
        focusedBorder: _FiledOutlineBorder(radius, borderColor),
        enabledBorder: _FiledOutlineBorder(radius, borderColor),
        errorBorder: _FiledOutlineBorder(radius, AppColors.red),
        focusedErrorBorder: _FiledOutlineBorder(radius, AppColors.red),
        disabledBorder: _FiledOutlineBorder(radius, AppColors.red),
        errorStyle: AppTextStyles.style12.copyWith(color: AppColors.red),
        filled: true,
        fillColor: backgroundColor ?? AppColors.background,
        hintText: hintText,
        hintStyle: AppTextStyles.style12.copyWith(
          color: hintColor ?? AppColors.veryDarkGray800,
        ),
        prefixIcon: prefixIconPath != null
            ? SvgImage(
                prefixIconPath!,
                width: Sizes.s20,
                height: Sizes.s20,
                color: prefixIconColor,
              )
            : prefixIcon,
        suffixIcon: suffixIconPath != null
            ? InkWell(
                onTap: onTrailingPressed,
                child: SvgImage(
                  suffixIconPath!,
                  width: Sizes.s20,
                  height: Sizes.s20,
                  color: suffixIconColor,
                ),
              )
            : suffixIcon,
        suffixIconConstraints: trailingConstraints,
        prefixStyle: AppTextStyles.style15.copyWith(color: prefixIconColor),
        suffixStyle: AppTextStyles.style15.copyWith(color: suffixIconColor),
      ),
      style: AppTextStyles.style14,
    );
  }
}

class _FiledOutlineBorder extends OutlineInputBorder {
  final int? radius;
  _FiledOutlineBorder(this.radius, [Color? color])
    : super(
        borderRadius: BorderRadius.all(
          Radius.circular(radius?.toDouble() ?? 10),
        ),
        borderSide: color == null ? BorderSide.none : BorderSide(color: color),
      );
}
