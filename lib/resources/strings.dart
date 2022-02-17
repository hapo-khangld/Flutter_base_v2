// ignore: implementation_imports
import 'package:easy_localization/src/public_ext.dart';

class StringDef {
  static StringDef? _instance;

  StringDef._();

  static StringDef get instance {
    _instance ??= StringDef._();

    return _instance!;
  }

  String get noContentFound => 'noContentFound'.tr();
  String get noDataToShowText => 'noDataToShowText'.tr();
  String get commonErrorText => 'commonErrorText'.tr();
  String get cancelText => 'Cancel'.tr();
  String get okText => 'OK'.tr();
  String get titleAlertText => 'Lorem Ipsum'.tr();
  String get contentAlertText => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.'.tr();
}
