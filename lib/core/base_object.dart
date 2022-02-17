import 'package:equatable/equatable.dart';

import 'network/base_response.dart';

abstract class BaseObject extends Equatable {
  fromJson(json);
}

abstract class Usecase<Type, P> {
  Future<ApiResponse<Type>> call(P params);
}
