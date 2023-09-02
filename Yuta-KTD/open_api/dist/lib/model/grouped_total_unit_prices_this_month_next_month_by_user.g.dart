// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'grouped_total_unit_prices_this_month_next_month_by_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GroupedTotalUnitPricesThisMonthNextMonthByUser
    _$$_GroupedTotalUnitPricesThisMonthNextMonthByUserFromJson(
            Map<String, dynamic> json) =>
        _$_GroupedTotalUnitPricesThisMonthNextMonthByUser(
          chargerDeviceCodes: (json['charger_device_codes'] as List<dynamic>?)
                  ?.map((e) => e as String)
                  .toList() ??
              const [],
          power: json['power'] as String?,
          expires: json['expires'] == null
              ? null
              : DateTime.parse(json['expires'] as String),
          monthPrices: (json['month_prices'] as List<dynamic>?)
                  ?.map((e) => MonthPrice.fromJson(e as Map<String, dynamic>))
                  .toList() ??
              const [],
        );

Map<String, dynamic> _$$_GroupedTotalUnitPricesThisMonthNextMonthByUserToJson(
        _$_GroupedTotalUnitPricesThisMonthNextMonthByUser instance) =>
    <String, dynamic>{
      'charger_device_codes': instance.chargerDeviceCodes,
      'power': instance.power,
      'expires': instance.expires?.toIso8601String(),
      'month_prices': instance.monthPrices,
    };
