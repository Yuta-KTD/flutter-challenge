// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_spot_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChargerSpotImage _$ChargerSpotImageFromJson(Map<String, dynamic> json) {
  return _ChargerSpotImage.fromJson(json);
}

/// @nodoc
mixin _$ChargerSpotImage {
  String get url => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerSpotImageCopyWith<ChargerSpotImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerSpotImageCopyWith<$Res> {
  factory $ChargerSpotImageCopyWith(
          ChargerSpotImage value, $Res Function(ChargerSpotImage) then) =
      _$ChargerSpotImageCopyWithImpl<$Res, ChargerSpotImage>;
  @useResult
  $Res call({String url, String? caption});
}

/// @nodoc
class _$ChargerSpotImageCopyWithImpl<$Res, $Val extends ChargerSpotImage>
    implements $ChargerSpotImageCopyWith<$Res> {
  _$ChargerSpotImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? caption = freezed,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChargerSpotImageCopyWith<$Res>
    implements $ChargerSpotImageCopyWith<$Res> {
  factory _$$_ChargerSpotImageCopyWith(
          _$_ChargerSpotImage value, $Res Function(_$_ChargerSpotImage) then) =
      __$$_ChargerSpotImageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, String? caption});
}

/// @nodoc
class __$$_ChargerSpotImageCopyWithImpl<$Res>
    extends _$ChargerSpotImageCopyWithImpl<$Res, _$_ChargerSpotImage>
    implements _$$_ChargerSpotImageCopyWith<$Res> {
  __$$_ChargerSpotImageCopyWithImpl(
      _$_ChargerSpotImage _value, $Res Function(_$_ChargerSpotImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? caption = freezed,
  }) {
    return _then(_$_ChargerSpotImage(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChargerSpotImage implements _ChargerSpotImage {
  const _$_ChargerSpotImage({required this.url, this.caption});

  factory _$_ChargerSpotImage.fromJson(Map<String, dynamic> json) =>
      _$$_ChargerSpotImageFromJson(json);

  @override
  final String url;
  @override
  final String? caption;

  @override
  String toString() {
    return 'ChargerSpotImage(url: $url, caption: $caption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChargerSpotImage &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.caption, caption) || other.caption == caption));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, caption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChargerSpotImageCopyWith<_$_ChargerSpotImage> get copyWith =>
      __$$_ChargerSpotImageCopyWithImpl<_$_ChargerSpotImage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChargerSpotImageToJson(
      this,
    );
  }
}

abstract class _ChargerSpotImage implements ChargerSpotImage {
  const factory _ChargerSpotImage(
      {required final String url, final String? caption}) = _$_ChargerSpotImage;

  factory _ChargerSpotImage.fromJson(Map<String, dynamic> json) =
      _$_ChargerSpotImage.fromJson;

  @override
  String get url;
  @override
  String? get caption;
  @override
  @JsonKey(ignore: true)
  _$$_ChargerSpotImageCopyWith<_$_ChargerSpotImage> get copyWith =>
      throw _privateConstructorUsedError;
}
