import 'package:equatable/equatable.dart';

abstract class BaseEventDef {
  static const int init = 0;
  static const int refresh = 1;
  static const int loadmore = 2;
  static const int update = 3;
  static const int updated = 4;
  static const int delete = 4;
  static const int deleted = 5;
  static const int submit = 6;
  static const int submitted = 7;
  static const int showLoading = 8;
  static const int end = showLoading + 1;
}

abstract class BaseBlocEvent extends Equatable {
  final int event;

  const BaseBlocEvent({this.event = BaseEventDef.init});

  @override
  List<Object> get props => <Object>[event];

  @override
  bool get stringify => true;
}
