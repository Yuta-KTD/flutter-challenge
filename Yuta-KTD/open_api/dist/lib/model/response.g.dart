// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Response _$$_ResponseFromJson(Map<String, dynamic> json) => _$_Response(
      status: $enumDecode(_$StatusEnumMap, json['status']),
      chargerSpots: (json['charger_spots'] as List<dynamic>?)
              ?.map((e) => ChargerSpot.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ResponseToJson(_$_Response instance) =>
    <String, dynamic>{
      'status': _$StatusEnumMap[instance.status]!,
      'charger_spots': instance.chargerSpots,
    };

const _$StatusEnumMap = {
  Status.ok: 'ok',
  Status.ngLatlngsIsBlank: 'ng_latlngs_is_blank',
  Status.ngDistanceTooLong: 'ng_distance_too_long',
};
