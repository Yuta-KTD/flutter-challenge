//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import '../models.dart';

part 'charger_spot.freezed.dart';
part 'charger_spot.g.dart';

@freezed
class ChargerSpot with _$ChargerSpot {
  /// Returns a new [ChargerSpot] instance.
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ChargerSpot({
    required String uuid,
    required String name,
    required num latitude,
    required num longitude,
    required ModelSource source_,
    String? note,
    @Default(const []) List<String> directions,
    MarkerLabel? markerLabel,
    @Default(const []) List<ChargerSpotImage> images,
    String? serviceTimeNote,
    NowAvailable? nowAvailable,
    @Default(const []) List<GroupedTotalUnitPricesThisMonthNextMonth> groupedTotalUnitPricesThisMonthNextMonth,
    @Default(const []) List<GroupedTotalUnitPricesThisMonthNextMonthByUser> groupedTotalUnitPricesThisMonthNextMonthByUser,
    @Default(const []) List<ChargerSpotServiceTime> chargerSpotServiceTimes,
    @Default(const []) List<ChargerDevice> chargerDevices,
    @Default(const []) List<GogoevChargerDevice> gogoevChargerDevices,
    String? address,
    String? facilityType,
    String? phoneNumber,
    String? parkingFee,
    String? advanceContact,
    @Default(const []) List<String> gogoevNotes,
    @Default(const []) List<String> maintenanceNote,
    MaintenanceStatus? maintenanceStatus,
  }) = _ChargerSpot;
  
  factory ChargerSpot.fromJson(Map<String, dynamic> json) => _$ChargerSpotFromJson(json);
}

