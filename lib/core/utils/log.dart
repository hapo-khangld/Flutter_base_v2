import '../constants.dart';
import '../../resources/r.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

/*
  Format
  ---------------------------------------
    error || title
  ---------------------------------------
    message || log
  ---------------------------------------
*/
// ignore: avoid_classes_with_only_static_members
class Log {
  static final Logger _logger = Logger(printer: PrettyPrinter(methodCount: 0));

  /// `View file to view format at the top`
  static void info(dynamic log, {dynamic title}) {
    _logger.i(
      log,
      title,
    );
  }

  /// `View file to view format at the top`
  static void debug(dynamic message, {dynamic title}) {
    if (R.env != EnvType.dev) return;
    _logger.d(message, title);
  }

  /// `View file to view format at the top`
  static void error(dynamic message, {dynamic error}) {
    if (R.env != EnvType.dev) return;
    _logger.e(message, error);
  }

  /// `View file to view format at the top`
  static void verbose(dynamic message, {dynamic title}) {
    if (R.env != EnvType.dev) return;
    debugPrint(message);
    // _logger.v(message, title);
  }

  /// `View file to view format at the top`
  static void warning(dynamic message, {dynamic title}) {
    if (R.env != EnvType.dev) return;
    debugPrint(message);
    // _logger.w(message, title);
  }

  /// `View file to view format at the top`
  static void wtf(dynamic message, {dynamic error}) {
    if (R.env != EnvType.dev) return;
    debugPrint(message);
    // _logger.wtf(message, error);
  }
}
