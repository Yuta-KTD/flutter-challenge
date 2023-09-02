// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'charger_spots_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChargerSpotsRequest _$$_ChargerSpotsRequestFromJson(
        Map<String, dynamic> json) =>
    _$_ChargerSpotsRequest(
      swLat: json['sw_lat'] as String?,
      swLng: json['sw_lng'] as String?,
      neLat: json['ne_lat'] as String?,
      neLng: json['ne_lng'] as String?,
      uuid: json['uuid'] as String?,
      fields: json['fields'] as String?,
    );

Map<String, dynamic> _$$_ChargerSpotsRequestToJson(
        _$_ChargerSpotsRequest instance) =>
    <String, dynamic>{
      'sw_lat': instance.swLat,
      'sw_lng': instance.swLng,
      'ne_lat': instance.neLat,
      'ne_lng': instance.neLng,
      'uuid': instance.uuid,
      'fields': instance.fields,
    };
