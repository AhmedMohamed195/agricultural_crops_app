// import 'package:meeting_point_app/config/routes/app_routes.dart';
// import 'package:meeting_point_app/core/utils/app_colors.dart';
// import 'package:flutter/material.dart';

// import '../../../../config/routes/app_navigator.dart';
// import 'loading_builder.dart';

// extension AlertLoading on BuildContext {
//   showLoading({bool hideKeyBoard = false}) async {
//     if (hideKeyBoard) FocusScope.of(this).unfocus();
//     await showDialog(
//       context: this,
//       routeSettings: const RouteSettings(name: AppRoutes.customLading),
//       barrierDismissible: false,
//       barrierColor: AppColors.grey.withValues(alpha: 0.5),
//       builder: (_) => const AlertBody(),
//     );
//   }

//   dismissLoading() => AppNavigator.pop(this);
// }
