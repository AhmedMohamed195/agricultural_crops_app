// import 'package:meeting_point_app/core/widgets/svg_image.dart';
// import 'package:flutter/material.dart';
// import 'package:meeting_point_app/core/utils/utils.dart';
// import 'package:gap/gap.dart';

// class MainOutlinedButton extends StatelessWidget {
//   static const Size defaultSize = Size(100.0, defaultPadding);
//   static const Size defaultExpandSize = Size(Sizes.infinity, defaultPadding);

//   static const TextStyle defaultTextStyle = TextStyle(
//     fontSize: Sizes.s16,
//     fontFamily: appFontFamily,
//     color: AppColors.textColor,
//   );
//   const MainOutlinedButton({
//     super.key,
//     required this.onPressed,
//     required this.title,
//     this.size = defaultSize,
//     this.fillColor,
//     this.disabledFillColor,
//     this.shape = const StadiumBorder(),
//     this.textStyle,
//   });

//   const MainOutlinedButton.expand({
//     super.key,
//     required this.onPressed,
//     required this.title,
//     this.size = defaultExpandSize,
//     this.fillColor,
//     this.disabledFillColor,
//     this.shape = const StadiumBorder(),
//     this.textStyle,
//   });
//   const MainOutlinedButton.customChild({
//     super.key,
//     required this.onPressed,
//     this.size = defaultSize,
//     required Widget child,
//     this.fillColor,
//     this.disabledFillColor,
//     this.shape = const StadiumBorder(),
//   })  : title = '',
//         textStyle = null;
//   factory MainOutlinedButton.iconTitle({
//     Key? key,
//     required VoidCallback? onPressed,
//     required String icon,
//     required String title,
//     Color? fillColor,
//     Color? disabledFillColor,
//     Size size,
//     OutlinedBorder shape,
//     TextStyle? textStyle,
//   }) = _MainOutlinedButtonIconTitle;

//   final VoidCallback? onPressed;
//   final Color? fillColor;
//   final Color? disabledFillColor;
//   final String title;
//   final Size size;
//   final OutlinedBorder shape;
//   final TextStyle? textStyle;

//   static Size get expandSize => defaultExpandSize;

//   static Color get disabledPrimaryColor => AppColors.primaryColor.withValues(
//         alpha: 0.26,
//       );

//   @override
//   Widget build(BuildContext context) {
//     return OutlinedButton(
//       onPressed: onPressed,
//       style: OutlinedButton.styleFrom(
//         shape: shape,
//         side: const BorderSide(
//           color: AppColors.lightGrey,
//         ),
//         tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//         minimumSize: size,
//         backgroundColor: fillColor,
//         disabledBackgroundColor: disabledFillColor,
//       ),
//       child: Text(
//         title,
//         style: textStyle ?? defaultTextStyle,
//       ),
//     );
//   }
// }

// final class _MainOutlinedButtonIconTitle extends MainOutlinedButton {
//   _MainOutlinedButtonIconTitle({
//     super.key,
//     required super.onPressed,
//     required String icon,
//     required String title,
//     super.fillColor,
//     super.disabledFillColor,
//     super.size,
//     TextStyle? textStyle,
//     super.shape,
//   }) : super.customChild(
//           child: _TitleIconWidget(
//             title: title,
//             icon: icon,
//             textStyle: textStyle,
//           ),
//         );
// }

// class _TitleIconWidget extends StatelessWidget {
//   const _TitleIconWidget({
//     required this.title,
//     required this.icon,
//     required this.textStyle,
//   });
//   final String title;
//   final String icon;
//   final TextStyle? textStyle;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         SvgImage.icon(
//           icon,
//           color: Colors.grey,
//         ),
//         const Gap(Sizes.s6),
//         Flexible(
//           child: Text(
//             title,
//             style: textStyle ??
//                 const TextStyle(
//                   fontSize: Sizes.s16,
//                   fontFamily: 'Cairo',
//                   color: AppColors.textColor,
//                 ),
//           ),
//         ),
//       ],
//     );
//   }
// }
