import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'core/constants.dart';
import 'core/route/navigation_manager.dart';
import 'navigator/routes.dart';
import 'resources/r.dart';

class DayAway extends StatelessWidget {
  const DayAway({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Remove plash Screen
    FlutterNativeSplash.remove();

    return MaterialApp(
      title: R.appName,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      debugShowCheckedModeBanner: R.env == EnvType.dev,
      locale: context.locale,
      theme: R.themes.lightTheme,
      themeMode: ThemeMode.light,
      navigatorKey: NavigationManager().rootNavigator,
      onGenerateRoute: (RouteSettings settings) =>
          AppRouter.generateRoute(context, settings),
      initialRoute: RouteName.initial,
    );
  }
}
