// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_device.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChargerDevice _$$_ChargerDeviceFromJson(Map<String, dynamic> json) =>
    _$_ChargerDevice(
      name: json['name'] as String,
      code: json['code'] as String,
      makerCode: json['maker_code'] as String,
      productCode: json['product_code'] as String,
      serialNumber: json['serial_number'] as String,
      serviceStartTime: json['service_start_time'] as String?,
      serviceEndTime: json['service_end_time'] as String?,
      allowCurrent: json['allow_current'] as String?,
      maxChargeTime: json['max_charge_time'] as String?,
      latitude: json['latitude'] as num,
      longitude: json['longitude'] as num,
      displayStatus:
          $enumDecode(_$DisplayStatusEnumMap, json['display_status']),
      power: json['power'] as String,
      fee: json['fee'] as String,
      lastUpdated: json['last_updated'] as String?,
    );

Map<String, dynamic> _$$_ChargerDeviceToJson(_$_ChargerDevice instance) =>
    <String, dynamic>{
      'name': instance.name,
      'code': instance.code,
      'maker_code': instance.makerCode,
      'product_code': instance.productCode,
      'serial_number': instance.serialNumber,
      'service_start_time': instance.serviceStartTime,
      'service_end_time': instance.serviceEndTime,
      'allow_current': instance.allowCurrent,
      'max_charge_time': instance.maxChargeTime,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'display_status': _$DisplayStatusEnumMap[instance.displayStatus]!,
      'power': instance.power,
      'fee': instance.fee,
      'last_updated': instance.lastUpdated,
    };

const _$DisplayStatusEnumMap = {
  DisplayStatus.unavailableOrNoInfo: 'unavailable_or_no_info',
  DisplayStatus.inUse: 'in_use',
  DisplayStatus.available: 'available',
  DisplayStatus.unableToObtainInfo: 'unable_to_obtain_info',
};
