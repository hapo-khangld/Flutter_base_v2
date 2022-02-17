import 'package:flutter/material.dart';

import 'numbers.dart';
import 'styles.dart';

class ThemeDef {
  //

  static ThemeDef? _instance;

  ThemeDef._();

  static ThemeDef get instance {
    _instance ??= ThemeDef._();

    return _instance!;
  }

  late final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: ColorsDef.kPrimary,
    scaffoldBackgroundColor: ColorsDef.white,
    splashFactory: InkRipple.splashFactory,
    buttonTheme: commonButtonTheme,
    textButtonTheme: textButtonTheme,
    outlinedButtonTheme: outlinedButtonTheme,
  )..colorScheme.copyWith(secondary: ColorsDef.kSecond);

  late final ButtonThemeData commonButtonTheme = ButtonThemeData(
    height: dimen_44,
    minWidth: double.infinity,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(dimen_4),
    ),
    buttonColor: ColorsDef.kPrimary,
    disabledColor: ColorsDef.kNature,
    highlightColor: Colors.white.withOpacity(0.05),
    splashColor: Colors.white.withOpacity(0.1),
  );

  late final TextButtonThemeData textButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: ColorsDef.white,
      backgroundColor: ColorsDef.kPrimary,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(dimen_10),
      textStyle: TextStyleDef.textButtonTextStyle,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dimen_2),
      ),
      onSurface: ColorsDef.white,
    ),
  );

  late final OutlinedButtonThemeData outlinedButtonTheme =
      OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      primary: ColorsDef.black,
      alignment: Alignment.center,
      padding: const EdgeInsets.all(dimen_10),
      textStyle: TextStyleDef.textButtonTextStyle,
      side: const BorderSide(
        width: dimen_1,
        color: ColorsDef.black,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(dimen_2),
      ),
    ),
  );
  //
}
