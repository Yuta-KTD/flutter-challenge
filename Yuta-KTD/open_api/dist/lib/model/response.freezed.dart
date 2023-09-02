// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Response _$ResponseFromJson(Map<String, dynamic> json) {
  return _Response.fromJson(json);
}

/// @nodoc
mixin _$Response {
  Status get status => throw _privateConstructorUsedError;
  List<ChargerSpot> get chargerSpots => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResponseCopyWith<Response> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseCopyWith<$Res> {
  factory $ResponseCopyWith(Response value, $Res Function(Response) then) =
      _$ResponseCopyWithImpl<$Res, Response>;
  @useResult
  $Res call({Status status, List<ChargerSpot> chargerSpots});
}

/// @nodoc
class _$ResponseCopyWithImpl<$Res, $Val extends Response>
    implements $ResponseCopyWith<$Res> {
  _$ResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chargerSpots = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      chargerSpots: null == chargerSpots
          ? _value.chargerSpots
          : chargerSpots // ignore: cast_nullable_to_non_nullable
              as List<ChargerSpot>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ResponseCopyWith<$Res> implements $ResponseCopyWith<$Res> {
  factory _$$_ResponseCopyWith(
          _$_Response value, $Res Function(_$_Response) then) =
      __$$_ResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Status status, List<ChargerSpot> chargerSpots});
}

/// @nodoc
class __$$_ResponseCopyWithImpl<$Res>
    extends _$ResponseCopyWithImpl<$Res, _$_Response>
    implements _$$_ResponseCopyWith<$Res> {
  __$$_ResponseCopyWithImpl(
      _$_Response _value, $Res Function(_$_Response) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? chargerSpots = null,
  }) {
    return _then(_$_Response(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      chargerSpots: null == chargerSpots
          ? _value._chargerSpots
          : chargerSpots // ignore: cast_nullable_to_non_nullable
              as List<ChargerSpot>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_Response implements _Response {
  const _$_Response(
      {required this.status, final List<ChargerSpot> chargerSpots = const []})
      : _chargerSpots = chargerSpots;

  factory _$_Response.fromJson(Map<String, dynamic> json) =>
      _$$_ResponseFromJson(json);

  @override
  final Status status;
  final List<ChargerSpot> _chargerSpots;
  @override
  @JsonKey()
  List<ChargerSpot> get chargerSpots {
    if (_chargerSpots is EqualUnmodifiableListView) return _chargerSpots;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chargerSpots);
  }

  @override
  String toString() {
    return 'Response(status: $status, chargerSpots: $chargerSpots)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Response &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._chargerSpots, _chargerSpots));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, status, const DeepCollectionEquality().hash(_chargerSpots));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      __$$_ResponseCopyWithImpl<_$_Response>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResponseToJson(
      this,
    );
  }
}

abstract class _Response implements Response {
  const factory _Response(
      {required final Status status,
      final List<ChargerSpot> chargerSpots}) = _$_Response;

  factory _Response.fromJson(Map<String, dynamic> json) = _$_Response.fromJson;

  @override
  Status get status;
  @override
  List<ChargerSpot> get chargerSpots;
  @override
  @JsonKey(ignore: true)
  _$$_ResponseCopyWith<_$_Response> get copyWith =>
      throw _privateConstructorUsedError;
}
