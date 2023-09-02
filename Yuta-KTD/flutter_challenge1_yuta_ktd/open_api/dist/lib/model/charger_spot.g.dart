// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_spot.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChargerSpot _$$_ChargerSpotFromJson(Map<String, dynamic> json) =>
    _$_ChargerSpot(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      latitude: json['latitude'] as num,
      longitude: json['longitude'] as num,
      source: $enumDecode(_$ModelSourceEnumMap, json['source']),
      note: json['note'] as String?,
      directions: (json['directions'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      markerLabel:
          $enumDecodeNullable(_$MarkerLabelEnumMap, json['marker_label']),
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => ChargerSpotImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      serviceTimeNote: json['service_time_note'] as String?,
      nowAvailable:
          $enumDecodeNullable(_$NowAvailableEnumMap, json['now_available']),
      groupedTotalUnitPricesThisMonthNextMonth:
          (json['grouped_total_unit_prices_this_month_next_month']
                      as List<dynamic>?)
                  ?.map((e) =>
                      GroupedTotalUnitPricesThisMonthNextMonth.fromJson(
                          e as Map<String, dynamic>))
                  .toList() ??
              const [],
      groupedTotalUnitPricesThisMonthNextMonthByUser:
          (json['grouped_total_unit_prices_this_month_next_month_by_user']
                      as List<dynamic>?)
                  ?.map((e) =>
                      GroupedTotalUnitPricesThisMonthNextMonthByUser.fromJson(
                          e as Map<String, dynamic>))
                  .toList() ??
              const [],
      chargerSpotServiceTimes: (json['charger_spot_service_times']
                  as List<dynamic>?)
              ?.map((e) =>
                  ChargerSpotServiceTime.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      chargerDevices: (json['charger_devices'] as List<dynamic>?)
              ?.map((e) => ChargerDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      gogoevChargerDevices: (json['gogoev_charger_devices'] as List<dynamic>?)
              ?.map((e) =>
                  GogoevChargerDevice.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      address: json['address'] as String?,
      facilityType: json['facility_type'] as String?,
      phoneNumber: json['phone_number'] as String?,
      parkingFee: json['parking_fee'] as String?,
      advanceContact: json['advance_contact'] as String?,
      gogoevNotes: (json['gogoev_notes'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      maintenanceNote: (json['maintenance_note'] as List<dynamic>?)
              ?.map((e) => e as String?)
              .toList() ??
          const [],
      maintenanceStatus: $enumDecodeNullable(
          _$MaintenanceStatusEnumMap, json['maintenance_status']),
    );

Map<String, dynamic> _$$_ChargerSpotToJson(_$_ChargerSpot instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'source': _$ModelSourceEnumMap[instance.source]!,
      'note': instance.note,
      'directions': instance.directions,
      'marker_label': _$MarkerLabelEnumMap[instance.markerLabel],
      'images': instance.images,
      'service_time_note': instance.serviceTimeNote,
      'now_available': _$NowAvailableEnumMap[instance.nowAvailable],
      'grouped_total_unit_prices_this_month_next_month':
          instance.groupedTotalUnitPricesThisMonthNextMonth,
      'grouped_total_unit_prices_this_month_next_month_by_user':
          instance.groupedTotalUnitPricesThisMonthNextMonthByUser,
      'charger_spot_service_times': instance.chargerSpotServiceTimes,
      'charger_devices': instance.chargerDevices,
      'gogoev_charger_devices': instance.gogoevChargerDevices,
      'address': instance.address,
      'facility_type': instance.facilityType,
      'phone_number': instance.phoneNumber,
      'parking_fee': instance.parkingFee,
      'advance_contact': instance.advanceContact,
      'gogoev_notes': instance.gogoevNotes,
      'maintenance_note': instance.maintenanceNote,
      'maintenance_status':
          _$MaintenanceStatusEnumMap[instance.maintenanceStatus],
    };

const _$ModelSourceEnumMap = {
  ModelSource.enechange: 'enechange',
  ModelSource.gogoev: 'gogoev',
};

const _$MarkerLabelEnumMap = {
  MarkerLabel.enechange: 'enechange',
  MarkerLabel.chademo: 'chademo',
  MarkerLabel.tesla: 'tesla',
  MarkerLabel.chademoTesla: 'chademo-tesla',
  MarkerLabel.normal: 'normal',
};

const _$NowAvailableEnumMap = {
  NowAvailable.yes: 'yes',
  NowAvailable.no: 'no',
  NowAvailable.unknown: 'unknown',
};

const _$MaintenanceStatusEnumMap = {
  MaintenanceStatus.normal: 'normal',
  MaintenanceStatus.notice: 'notice',
  MaintenanceStatus.outOfOrder: 'out_of_order',
  MaintenanceStatus.onBreak: 'on_break',
};
