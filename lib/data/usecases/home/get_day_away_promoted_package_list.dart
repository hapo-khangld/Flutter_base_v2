import 'package:json_annotation/json_annotation.dart';

import '../../../core/base_object.dart';
import '../../../core/network/base_response.dart';
import '../../models/package.dart';
import '../../repositories/home_repository.dart';

part 'get_day_away_promoted_package_list.g.dart';

class GetDayAwayPromotedPackageList
    extends Usecase<List<Package>, DayAwayPromotedPackageFilter> {
  final HomeRepository _repository;

  GetDayAwayPromotedPackageList(this._repository);

  @override
  Future<ApiResponse<List<Package>>> call(DayAwayPromotedPackageFilter params) {
    return _repository.getDayAwayPromotedPackageList(params.toJson());
  }
}

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, createFactory: false)
class DayAwayPromotedPackageFilter {
  final String? packagePriceSortType;
  final String? currencyCode;
  final String? countryCode;
  final List<String>? typeList;
  final List<String>? corporateCodeList;
  final int? pageSize;
  final int? pageIndex;
  final List<String>? sort;
  final List<String>? expand;

  DayAwayPromotedPackageFilter(
      {this.packagePriceSortType,
      this.currencyCode,
      this.countryCode,
      this.typeList,
      this.corporateCodeList,
      this.pageSize,
      this.pageIndex,
      this.sort,
      this.expand});

  Map<String, dynamic> toJson() => _$DayAwayPromotedPackageFilterToJson(this);
}
