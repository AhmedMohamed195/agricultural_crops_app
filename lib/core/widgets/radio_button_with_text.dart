// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:gap/gap.dart';
// import 'package:agricultural_crops_app/core/extensions/text_style.dart';

// import '../utils/utils.dart';

// class RadioButtonWithText<T> extends StatelessWidget {
//   final String text;
//   final T? groupValue;
//   final void Function(T?) onChanged;
//   final T value;
//   final TextStyle? textStyle;

//   const RadioButtonWithText({
//     super.key,
//     required this.onChanged,
//     required this.value,
//     required this.text,
//     required this.groupValue,
//     this.textStyle,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () => onChanged(value),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(
//             width: Sizes.s20.w,
//             child: Radio<T>(
//               value: value,
//               groupValue: groupValue,
//               onChanged: onChanged,
//               visualDensity: VisualDensity.compact,
//               activeColor: AppColors.textPrimary,
//             ),
//           ),
//           Gap(Sizes.s5.w),
//           Text(
//             text.tr(),
//             style: value == groupValue
//                 ? AppTextStyles.style14
//                 : AppTextStyles.style14.copyColorWith(AppColors.grayDarkHover),
//           ),
//         ],
//       ),
//     );
//   }
// }
