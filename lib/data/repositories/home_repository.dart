import '../../core/network/base_response.dart';
import '../models/package.dart';

import '../remote/home/home_remote_data_source.dart';

class HomeRepository {
  final HomeRemoteDataSource _remoteDataSource;

  HomeRepository(this._remoteDataSource);

  Future<ApiResponse<List<Package>>> getDayAwayPromotedPackageList(
          Map<String, dynamic> filter) async =>
      _remoteDataSource.getDayAwayPromotedPackageList(filter);
}
