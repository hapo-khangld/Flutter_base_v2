import 'package:flutter/cupertino.dart';

import '../core/route/navigation_manager.dart';
import 'routes.dart';

class AppNavigator {
  static void goBack<T extends Object>({BuildContext? context, T? result}) {
    NavigationManager().pop(context: context, result: result);
  }

  static Future<dynamic> navigateToHome() {
    return NavigationManager().pushReplacementNamed(RouteName.home);
  }
}
