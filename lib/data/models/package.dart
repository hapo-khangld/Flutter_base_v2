import 'package:dayaway/data/models/file_library.dart';

import '../../core/base_object.dart';
import 'package:json_annotation/json_annotation.dart';

part 'package.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Package extends BaseObject {
  final String? id;

  final String? code;
  final String? name;
  final List<String>? emailAddressList;
  final String? type;
  final String? corporateCode;
  final String? imgId;
  final String? packageDetails;
  final String? hotelId;
  final String? status;

  final String? roomTypeId;
  final String? roomType;
  final int? sequence;
  final double? basePrice;

  final bool? isPromoted;

  final String? categoryTag;
  final String? hotelCxlPolicyCode;
  final double? taxRate;
  final bool? isTaxRateApplicable;
  final double? serviceFee;
  final bool? isServiceFeeApplicable;
  final double? depositValue;
  final bool? isOverrideHotelFee;
  final int? minAdvanceBooking;
  final String? termAndCondition;
  final bool? isOverrideHotelCxlPolicy;
//  packageTranslationList;
  final int? cancellationPriorHour;
  final String? displayUnit;
  final bool? isRefundable;
  final String? summary;
//  packagePriceDailyList;
// hotel;
  final FileLibrary? img;
  final int? availableToSell;
// hotelPackagePriceDailyList;
  final bool? isMinAdvanceBookingValid;
  final double? lowestPrice;
//  hotelCancellationPolicy;
// hotelPackageTimeslotList;
// packageCancellationPolicy;
  final bool? isAvailableNext6Months;

  Package({
    this.id,
    this.code,
    this.name,
    this.type,
    this.corporateCode,
    this.imgId,
    this.packageDetails,
    this.hotelId,
    this.status,
    this.roomTypeId,
    this.roomType,
    this.sequence,
    this.basePrice,
    this.isPromoted,
    this.categoryTag,
    this.hotelCxlPolicyCode,
    this.taxRate,
    this.isTaxRateApplicable,
    this.serviceFee,
    this.isServiceFeeApplicable,
    this.depositValue,
    this.isOverrideHotelFee,
    this.minAdvanceBooking,
    this.termAndCondition,
    this.isOverrideHotelCxlPolicy,
    this.cancellationPriorHour,
    this.displayUnit,
    this.isRefundable,
    this.summary,
    this.availableToSell,
    this.isMinAdvanceBookingValid,
    this.lowestPrice,
    this.isAvailableNext6Months,
    this.emailAddressList,
    this.img,
  });

  @override
  fromJson(json) {
    return Package.fromJson(json);
  }

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);

  Map<String, dynamic> toJson() => _$PackageToJson(this);

  @override
  List get props => [
        id,
        code,
        name,
        type,
        corporateCode,
        imgId,
        packageDetails,
        hotelId,
        status,
        roomTypeId,
        roomType,
        sequence,
        basePrice,
        isPromoted,
        categoryTag,
        hotelCxlPolicyCode,
        taxRate,
        isTaxRateApplicable,
        serviceFee,
        isServiceFeeApplicable,
        depositValue,
        isOverrideHotelFee,
        minAdvanceBooking,
        termAndCondition,
        isOverrideHotelCxlPolicy,
        cancellationPriorHour,
        displayUnit,
        isRefundable,
        summary,
        availableToSell,
        isMinAdvanceBookingValid,
        lowestPrice,
        isAvailableNext6Months,
        emailAddressList,
        img,
      ];
}
