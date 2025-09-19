// import 'package:meeting_point_app/core/extensions/text_style.dart';
// import 'package:meeting_point_app/core/helper/l10n.dart';
// import 'package:flutter/material.dart' hide TextStyle;
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_spinkit/flutter_spinkit.dart';
// import 'package:gap/gap.dart';

// import '../../utils/utils.dart';

// class AlertBody extends StatelessWidget {
//   const AlertBody({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ///it's not the best way to reduce width.
//     ///change it to suitable way.
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 120),
//       child: AlertDialog(
//         insetPadding: EdgeInsets.zero,
//         backgroundColor: AppColors.grey.withAlpha(500),
//         content: SizedBox(
//           height: 100.h,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               const SpinKitFadingCircle(color: AppColors.whiteColor),
//               Gap(Sizes.s10.h),
//               // Text(
//               //   '${AppStrings.loading.trans()}...!',
//               //   style: AppTextStyles.style18.bold.withWhiteColor,
//               // ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
