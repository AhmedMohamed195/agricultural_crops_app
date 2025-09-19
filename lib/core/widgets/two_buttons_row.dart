// import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';

// import '../utils/utils.dart';

// class TwoButtonsRow extends StatelessWidget {
//   final String label_1;
//   final Color? backgroundColor_1;
//   final void Function() onPressed_1;
//   final void Function()? onPressed_2;
//   const TwoButtonsRow({
//     super.key,
//     required this.onPressed_1,
//     this.onPressed_2,
//     required this.label_1,
//     this.backgroundColor_1 = AppColors.primary,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(children: [
//       Expanded(
//         child: Row(
//           children: [
//             Expanded(
//               child: MainButton(
//                 onPressed: onPressed_1,
//                 label: label_1.tr(),
//                 backgroundColor: backgroundColor_1,
//               ),
//             ),
//             Gap(Sizes.s12),
//             Expanded(
//               child: MainButton(
//                 onPressed: onPressed_2 ?? () => Navigator.pop(context),
//                 label: LocaleKeys.cancel.tr(),
//                 backgroundColor: AppColors.white,
//                 textColor: AppColors.textPrimary,
//                 borderColor: AppColors.textPrimary,
//               ),
//             ),
//           ],
//         ),
//       )
//     ]);
//   }
// }
