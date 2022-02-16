import 'package:flutter/material.dart';
import 'numbers.dart';

abstract class ColorsDef {
  static const Color facebookBackgroundColor = Color.fromRGBO(66, 103, 178, 1);
  static const Color googleBackgroundColor = Color.fromRGBO(51, 103, 214, 1);
  static const Color appleBtnLoginBackgroundColor =
      Color.fromRGBO(17, 17, 17, 1);

  static const Color kPrimary = Color(0xff2D2D2D);
  static const Color kPrimary90 = Color(0xff474747);
  static const Color kPrimary80 = Color(0xff616161);
  static const Color kPrimary70 = Color(0xff7A7A7A);
  static const Color kPrimary60 = Color(0xff949494);
  static const Color kPrimary50 = Color(0xffADADAD);

  static const Color kSecond = Color(0xff7AA1A8);
  static const Color kSecond90 = Color(0xff99B7BC);
  static const Color kSecond80 = Color(0xffB8CDD1);
  static const Color kSecond70 = Color(0xffB8CDD1);
  static const Color kSecond60 = Color(0xffD7E3E5);

  static const Color kNature = Color(0xffC7C7C7);
  static const Color kNature90 = Color(0xffE0E0E0);
  static const Color kNature85 = Color(0xffCCCCCC);
  static const Color kNature80 = Color(0xffFAFAFA);

  static const Color kSuccess = Color(0xff10B981);

  static const Color kInfo = Color(0xff00A2FD);
  static const Color kInfo90 = Color(0xff33B6FF);

  static const Color kWarning = Color(0xff33B6FF);

  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff111111);
}

abstract class TextStyleDef {
  //
  static TextStyle textButtonTextStyle = const TextStyle(
      color: ColorsDef.white, fontSize: dimen_16, fontWeight: FontWeight.w500);
  //
}
