// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charger_spot_service_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ChargerSpotServiceTime _$$_ChargerSpotServiceTimeFromJson(
        Map<String, dynamic> json) =>
    _$_ChargerSpotServiceTime(
      businessDay: $enumDecode(_$BusinessDayEnumMap, json['business_day']),
      day: $enumDecode(_$DayEnumMap, json['day']),
      startTime: json['start_time'] as String?,
      endTime: json['end_time'] as String?,
      today: json['today'] as bool,
    );

Map<String, dynamic> _$$_ChargerSpotServiceTimeToJson(
        _$_ChargerSpotServiceTime instance) =>
    <String, dynamic>{
      'business_day': _$BusinessDayEnumMap[instance.businessDay]!,
      'day': _$DayEnumMap[instance.day]!,
      'start_time': instance.startTime,
      'end_time': instance.endTime,
      'today': instance.today,
    };

const _$BusinessDayEnumMap = {
  BusinessDay.yes: 'yes',
  BusinessDay.no: 'no',
  BusinessDay.unknown: 'unknown',
};

const _$DayEnumMap = {
  Day.sunday: 'Sunday',
  Day.monday: 'Monday',
  Day.tuesday: 'Tuesday',
  Day.wednesday: 'Wednesday',
  Day.thursday: 'Thursday',
  Day.friday: 'Friday',
  Day.saturday: 'Saturday',
  Day.holiday: 'Holiday',
  Day.weekday: 'Weekday',
};
