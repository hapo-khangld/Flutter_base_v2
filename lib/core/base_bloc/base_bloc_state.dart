import 'package:equatable/equatable.dart';

abstract class BaseStateDef {
  static const int init = 0;
  static const int processing = 1;
  static const int started = 2;
  static const int onRefresh = 3;
  static const int onLoadmore = 4;
  static const int loading = 5;
  static const int success = 6;
  static const int failed = 7;
}

abstract class BaseBlocState extends Equatable {
  final int state;
  final String? error; // Send error for UI

  const BaseBlocState({required this.state, this.error});

  @override
  List get props => [state, error];

  bool get isEndStatus =>
      state == BaseStateDef.success || state == BaseStateDef.failed;
}
