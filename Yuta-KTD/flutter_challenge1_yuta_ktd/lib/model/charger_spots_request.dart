import 'package:freezed_annotation/freezed_annotation.dart';

part 'charger_spots_request.freezed.dart';
part 'charger_spots_request.g.dart';

/// リクエスト用のモデル
@freezed
class ChargerSpotsRequest with _$ChargerSpotsRequest {
  // 今回の課題で使いそうなパラメーターだけにする
  const factory ChargerSpotsRequest(
      {@JsonKey(name: 'sw_lat') String? swLat,
      @JsonKey(name: 'sw_lng') String? swLng,
      @JsonKey(name: 'ne_lat') String? neLat,
      @JsonKey(name: 'ne_lng') String? neLng,
      String? uuid,
      String? fields}) = _ChargerSpotsRequest;

  factory ChargerSpotsRequest.fromJson(Map<String, dynamic> json) =>
      _$ChargerSpotsRequestFromJson(json);
}
