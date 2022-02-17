import 'package:dayaway/data/remote/home/home_remote_query.dart';

import '../../../core/network/base_response.dart';
import '../../models/package.dart';
import '../../../services/graphql_service.dart';

class HomeRemoteDataSource {
  final GraphQLService _service;

  HomeRemoteDataSource(this._service);

  Future<ApiResponse<List<Package>>> getDayAwayPromotedPackageList(
      Map<String, dynamic> filter) async {
    return await _service.query<List<Package>, Package>(
        HomeRemoteQuery.dayAwayPromotedPackageList,
        baseObject: Package(),
        filter: filter);
  }
}
