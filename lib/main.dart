import 'package:agricultural_crops_app/app.dart';
import 'package:agricultural_crops_app/core/helper/system_ui_helper.dart';

import 'package:ansicolor/ansicolor.dart';
import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/foundation.dart';
// import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'core/helper/app_bloc_observer.dart';
import 'core/helper/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  SystemUIHelper.configureSystemUI();

  ansiColorDisabled = false;
  await _initDependencies();
  Bloc.observer = AppBlocObserver();
  runApp(
    EasyLocalization(
      supportedLocales: L10n.all,
      path: L10n.languagePath,
      saveLocale: true,
      startLocale: L10n.arabic,
      fallbackLocale: L10n.english,
      child: const AgriculturalCropsApp(),
      // child: DevicePreview(
      //   enabled: !kReleaseMode,
      //   builder: (context) {
      //     return const MahsolyClientApp();
      //   },
      // ),
    ),
  );
}

Future<void> _initDependencies() async {
  await Future.wait([
    EasyLocalization.ensureInitialized(),
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]),
  ]);
}

// flutter build apk --release --no-tree-shake-icons
// dart run build_runner build --delete-conflicting-outputs
