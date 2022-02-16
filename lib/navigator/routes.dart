import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import '../core/utils/screen_utils.dart';
import '../resources/R.dart';
import '../screens/commons/no_content_found_screen.dart';
import '../screens/main_screen.dart';

abstract class RouteName {
  static const String initial = '/';
  static const String unknow = 'unKnow';

  static const String home = 'home';
}

class AppRouter {
  /// Main function
  static Route<dynamic> generateRoute(
      BuildContext context, RouteSettings settings) {
    // Map<String, dynamic> arguments =
    //     jsonDecode(jsonEncode(settings.arguments)) as Map<String, dynamic>;
    switch (settings.name) {
      case RouteName.initial:
      case RouteName.home:
        return platformPageRoute(
            context: context,
            builder: (ctx) {
              initResource(ctx);
              return const MainScreen();
            });
      default:
        return platformPageRoute(
            context: context,
            builder: (_) {
              return const NoContentFoundScreen();
            });
    }
  }

  static void initResource(BuildContext context) {
    try {
      ScreenUtils.instance.init(
        context,
        designSize: R.designSize,
        allowFontScaling: true,
      );
    } catch (e) {
      // ignore
    }
  }
}
