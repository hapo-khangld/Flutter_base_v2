import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;

import 'screen_utils.dart';
import 'utils.dart';

extension StringExtension on String? {
  bool get isTextEmpty {
    if (this == null) return true;
    return this!.trim().isEmpty;
  }

  bool get isTextNotEmpty {
    if (this == null) return false;
    return this!.trim().isNotEmpty;
  }

  bool get isNetwork {
    if (this == null) return false;
    String _value = this!.trim();
    return _value.startsWith('http') || _value.startsWith('https');
  }

  bool get isAsset {
    if (this == null) return false;
    String _value = this!.trim();
    return _value.contains('asset');
  }

  bool get isImagePath {
    if (this == null) return false;
    String _value = (p.extension(this!)).trim();
    return _value == '.png' || _value == '.jpeg';
  }

  bool get isVideoPath {
    if (this == null) return false;
    String _value = (p.extension(this!)).trim();
    return _value == '.mp4';
  }

  bool get isAudioPath {
    if (this == null) return false;
    String _value = (p.extension(this!)).trim();
    return _value == '.mp3' || _value == '.audio';
  }
}

extension IterableExtension<E> on Iterable<E>? {
  bool get isListEmpty {
    if (this == null) return true;
    return this!.isEmpty;
  }

  bool get isListNotEmpty {
    if (this == null) return false;
    return this!.isNotEmpty;
  }
}

extension MapExtension<K, V> on Map<K, V>? {
  bool get isMapEmpty {
    if (this == null) return true;
    return this!.keys.isListEmpty;
  }

  bool get isMapNotEmpty {
    if (this == null) return false;
    return this!.keys.isListNotEmpty;
  }
}

extension DateTimeExtension on DateTime {
  DateTime applyTimeOfDay(TimeOfDay time) =>
      DateTime(year, month, day, time.hour, time.minute);
}

extension NumExtension on num {
  bool get isInteger => this is int || this == roundToDouble();

  num toPrecision(int precision) {
    return num.parse(toStringAsFixed(precision));
  }

  double get toRad {
    return this * (math.pi / 180.0);
  }

  int toGetDivision(int to) {
    return this ~/ to;
  }
}

extension SizeExtension on double {
  double toLineHeight(double fontSize) {
    final lineHeight = this / fontSize;
    return asT<double>(lineHeight.toPrecision(2)) ?? 1.0;
  }

  ///[ResponsiveLayout.setWidth]
  double get w => ScreenUtils.instance.setWidth(this);

  ///[ResponsiveLayout.setHeight]
  double get h => ScreenUtils.instance.setHeight(this);

  ///[ResponsiveLayout.setSp]
  double get sp => ScreenUtils.instance.setSp(this);

  bool get isEmpty {
    return this == 0.0;
  }
}

extension TextStyleExtention on TextStyle {
  TextStyle get sp {
    var fontSize = this.fontSize;
    if (fontSize != null) {
      return copyWith(fontSize: fontSize.sp);
    }
    return this;
  }
}
