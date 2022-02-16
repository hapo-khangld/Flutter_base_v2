import 'package:flutter/material.dart';

import '../core/constants.dart';
import '../core/utils/screen_utils.dart';
import 'strings.dart';
import 'themes.dart';

class R {
  R._();

  static const String applicationId = 'com.hcg.dayaway';
  static const String appName = "DayAway";

  static final StringDef strings = StringDef.instance;
  static final ThemeDef themes = ThemeDef.instance;

  /// Localization config
  static const String localizationPath = 'assets/translations';
  static const List<Locale> locales = [Locale('en'), Locale('vi')];
  static const designSize = Size(375, 667);

  // Env
  static late EnvType env;

  static void init(BuildContext context) {
    /// Init screen utils
    ScreenUtils.instance.init(
      context,
      designSize: designSize,
      allowFontScaling: true,
    );
  }
}
