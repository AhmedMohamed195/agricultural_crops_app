import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:agricultural_crops_app/config/themes/app_theme.dart';
import 'config/routes/routes.dart';

class AgriculturalCropsApp extends StatelessWidget {
  const AgriculturalCropsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: Builder(
        builder: (context) {
          return MaterialApp(
            theme: AppTheme.mahsolyTheme,
            debugShowCheckedModeBanner: false,
            locale: context.locale,
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            navigatorKey: AppNavigator.navigatorKey,
            initialRoute: AppRoutes.onBoardingScreen,
            onGenerateRoute: RouteGenerator.getRoute,
            builder: (context, child) {
              if (Platform.isAndroid) {
                return Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: child!,
                );
              }
              return child!;
            },
          );
        },
      ),
    );
  }
}
