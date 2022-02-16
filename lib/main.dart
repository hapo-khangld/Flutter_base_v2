import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/constants.dart';
import 'core/helpers.dart';
import 'core/utils/log.dart';
import 'day_away.dart';
import 'resources/r.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Init Env
  R.env = EnvType.dev;
  Log.debug(R.env, title: "Environment");

  // Init core library
  await Future.wait([
    Helper.initEasyLocalization(),
    Future.delayed(const Duration(seconds: 2))
  ]);

  runApp(
    EasyLocalization(
      path: R.localizationPath,
      supportedLocales: R.locales,
      fallbackLocale: const Locale('en', 'US'),
      useOnlyLangCode: true,
      child: const DayAway(),
    ),
  );
}
