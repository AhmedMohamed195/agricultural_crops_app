// import 'package:flutter/material.dart';

// import '../utils/utils.dart';

// class MainDropdownButton<T> extends StatelessWidget {
//   const MainDropdownButton({
//     super.key,
//     this.labelText,
//     this.hintText,
//     this.leadingIcon,
//     this.leadingText,
//     this.trailingIcon,
//     this.trailingText,
//     this.validator,
//     this.onChanged,
//     this.onSaved,
//     this.trailingConstraints,
//     this.enabled,
//     this.focusNode,
//     this.isDense,
//     this.labelColor,
//     this.backgroundColor,
//     this.hintColor,
//     this.borderColor = AppColors.primaryLightActive,
//     this.radius = 8,
//     this.value,
//     this.items,
//     this.autovalidateMode,
//     // New enhanced properties
//     this.itemsList,
//     this.displayStringForItem,
//     this.itemBuilder,
//     this.isExpanded = true,
//     this.dropdownColor,
//     this.iconSize = 24.0,
//     this.elevation = 8,
//     this.onTap,
//     this.menuMaxHeight,
//     this.enableFeedback = true,
//     this.alignment = AlignmentDirectional.centerStart,
//     this.borderRadius,
//     this.selectedItemBuilder,
//   }) : assert(
//           items != null || itemsList != null,
//           'Either items or itemsList must be provided',
//         );

//   final FocusNode? focusNode;
//   final String? labelText;
//   final String? hintText;
//   final Color? hintColor;
//   final Color? borderColor;
//   final Widget? leadingIcon;
//   final String? leadingText;
//   final Widget? trailingIcon;
//   final BoxConstraints? trailingConstraints;
//   final String? trailingText;
//   final bool? enabled;
//   final FormFieldValidator<T>? validator;
//   final ValueChanged<T?>? onChanged;
//   final ValueChanged<T?>? onSaved;
//   final bool? isDense;
//   final AutovalidateMode? autovalidateMode;
//   final Color? labelColor;
//   final Color? backgroundColor;
//   final int? radius;
//   final T? value;

//   // Original items property (for backward compatibility)
//   final List<DropdownMenuItem<T>>? items;

//   // New enhanced properties
//   final List<T>? itemsList;
//   final String Function(T item)? displayStringForItem;
//   final Widget Function(T item)? itemBuilder;
//   final bool isExpanded;
//   final Color? dropdownColor;
//   final double iconSize;
//   final int elevation;
//   final VoidCallback? onTap;
//   final double? menuMaxHeight;
//   final bool enableFeedback;
//   final AlignmentGeometry alignment;
//   final BorderRadius? borderRadius;
//   final DropdownButtonBuilder? selectedItemBuilder;

//   String _getDisplayString(T item) {
//     if (displayStringForItem != null) {
//       return displayStringForItem!(item);
//     }
//     return item.toString();
//   }

//   Widget _buildDropdownItem(T item) {
//     if (itemBuilder != null) {
//       return itemBuilder!(item);
//     }
//     return Text(
//       _getDisplayString(item),
//       style: AppTextStyles.style14.copyWith(
//         fontFamily: appFontFamily,
//       ),
//     );
//   }

//   List<DropdownMenuItem<T>> _buildDropdownMenuItems() {
//     if (items != null) {
//       return items!;
//     }

//     if (itemsList != null) {
//       return itemsList!.map((T item) {
//         return DropdownMenuItem<T>(
//           value: item,
//           child: _buildDropdownItem(item),
//         );
//       }).toList();
//     }

//     return [];
//   }

//   Widget? _buildPrefixIcon() {
//     if (leadingText != null) {
//       return Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         alignment: Alignment.centerLeft,
//         child: Text(
//           leadingText!,
//           style: AppTextStyles.style15.copyWith(
//             color: AppColors.grayDarkHover,
//           ),
//         ),
//       );
//     }
//     return leadingIcon;
//   }

//   Widget? _buildSuffixIcon() {
//     if (trailingText != null) {
//       return Container(
//         padding: const EdgeInsets.symmetric(horizontal: 12),
//         alignment: Alignment.centerRight,
//         child: Text(
//           trailingText!,
//           style: AppTextStyles.style15.copyWith(
//             color: AppColors.grayDarkHover,
//           ),
//         ),
//       );
//     }
//     return trailingIcon;
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         if (labelText != null)
//           Padding(
//             padding: const EdgeInsets.only(
//               bottom: Sizes.s10,
//             ),
//             child: Text(
//               labelText!,
//               style: AppTextStyles.style12.copyWith(
//                 color: labelColor ?? AppColors.grayDarkHover,
//               ),
//             ),
//           ),
//         DropdownButtonFormField<T>(
//           focusNode: focusNode,
//           value: value,
//           items: _buildDropdownMenuItems(),
//           onChanged: enabled == false ? null : onChanged,
//           onSaved: onSaved,
//           validator: validator,
//           autovalidateMode: autovalidateMode,
//           isExpanded: isExpanded,
//           elevation: elevation,
//           onTap: onTap,
//           menuMaxHeight: menuMaxHeight,
//           enableFeedback: enableFeedback,
//           alignment: alignment,
//           selectedItemBuilder: selectedItemBuilder,
//           decoration: InputDecoration(
//             contentPadding: EdgeInsets.symmetric(
//               horizontal: Sizes.s12,
//               vertical: Sizes.s10,
//             ),
//             isDense: isDense ?? true,
//             focusedBorder: _FiledOutlineBorder(radius, borderColor),
//             enabledBorder: _FiledOutlineBorder(radius, borderColor),
//             errorBorder: _FiledOutlineBorder(radius, AppColors.error),
//             focusedErrorBorder: _FiledOutlineBorder(radius, AppColors.error),
//             disabledBorder:
//                 _FiledOutlineBorder(radius, AppColors.grayDarkHover),
//             errorStyle: AppTextStyles.style12.copyWith(
//               color: AppColors.error,
//             ),
//             filled: true,
//             fillColor: backgroundColor ?? AppColors.grayLightActive,
//             hintText: hintText,
//             hintStyle: AppTextStyles.style12
//                 .copyWith(color: hintColor ?? AppColors.grayDarkHover),
//             prefixIcon: _buildPrefixIcon(),
//             suffixIcon: _buildSuffixIcon(),
//             suffixIconConstraints: trailingConstraints,
//             prefixIconConstraints: leadingText != null
//                 ? const BoxConstraints(minWidth: 0, minHeight: 0)
//                 : null,
//           ),
//           style: AppTextStyles.style12.copyWith(
//             fontFamily: appFontFamily,
//           ),
//           dropdownColor:
//               dropdownColor ?? backgroundColor ?? AppColors.grayLightActive,
//           icon: const Icon(Icons.keyboard_arrow_down),
//           iconEnabledColor: AppColors.grayDarkHover,
//           iconDisabledColor: AppColors.grayDarkHover,
//           iconSize: iconSize,
//         ),
//       ],
//     );
//   }
// }

// class _FiledOutlineBorder extends OutlineInputBorder {
//   final int? radius;
//   _FiledOutlineBorder(this.radius, [Color? color])
//       : super(
//           borderRadius: BorderRadius.all(
//             Radius.circular(radius?.toDouble() ?? 10),
//           ),
//           borderSide: color == null
//               ? BorderSide.none
//               : BorderSide(
//                   color: color,
//                 ),
//         );
// }
