// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'charger_spot.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChargerSpot _$ChargerSpotFromJson(Map<String, dynamic> json) {
  return _ChargerSpot.fromJson(json);
}

/// @nodoc
mixin _$ChargerSpot {
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  num get latitude => throw _privateConstructorUsedError;
  num get longitude => throw _privateConstructorUsedError;
  ModelSource get source => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  List<String> get directions => throw _privateConstructorUsedError;
  MarkerLabel? get markerLabel => throw _privateConstructorUsedError;
  List<ChargerSpotImage> get images => throw _privateConstructorUsedError;
  String? get serviceTimeNote => throw _privateConstructorUsedError;
  NowAvailable? get nowAvailable => throw _privateConstructorUsedError;
  List<GroupedTotalUnitPricesThisMonthNextMonth>
      get groupedTotalUnitPricesThisMonthNextMonth =>
          throw _privateConstructorUsedError;
  List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
      get groupedTotalUnitPricesThisMonthNextMonthByUser =>
          throw _privateConstructorUsedError;
  List<ChargerSpotServiceTime> get chargerSpotServiceTimes =>
      throw _privateConstructorUsedError;
  List<ChargerDevice> get chargerDevices => throw _privateConstructorUsedError;
  List<GogoevChargerDevice> get gogoevChargerDevices =>
      throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  String? get facilityType => throw _privateConstructorUsedError;
  String? get phoneNumber => throw _privateConstructorUsedError;
  String? get parkingFee => throw _privateConstructorUsedError;
  String? get advanceContact => throw _privateConstructorUsedError;
  List<String> get gogoevNotes => throw _privateConstructorUsedError;
  List<String?> get maintenanceNote => throw _privateConstructorUsedError;
  MaintenanceStatus? get maintenanceStatus =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChargerSpotCopyWith<ChargerSpot> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChargerSpotCopyWith<$Res> {
  factory $ChargerSpotCopyWith(
          ChargerSpot value, $Res Function(ChargerSpot) then) =
      _$ChargerSpotCopyWithImpl<$Res, ChargerSpot>;
  @useResult
  $Res call(
      {String uuid,
      String name,
      num latitude,
      num longitude,
      ModelSource source,
      String? note,
      List<String> directions,
      MarkerLabel? markerLabel,
      List<ChargerSpotImage> images,
      String? serviceTimeNote,
      NowAvailable? nowAvailable,
      List<GroupedTotalUnitPricesThisMonthNextMonth>
          groupedTotalUnitPricesThisMonthNextMonth,
      List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
          groupedTotalUnitPricesThisMonthNextMonthByUser,
      List<ChargerSpotServiceTime> chargerSpotServiceTimes,
      List<ChargerDevice> chargerDevices,
      List<GogoevChargerDevice> gogoevChargerDevices,
      String? address,
      String? facilityType,
      String? phoneNumber,
      String? parkingFee,
      String? advanceContact,
      List<String> gogoevNotes,
      List<String?> maintenanceNote,
      MaintenanceStatus? maintenanceStatus});
}

/// @nodoc
class _$ChargerSpotCopyWithImpl<$Res, $Val extends ChargerSpot>
    implements $ChargerSpotCopyWith<$Res> {
  _$ChargerSpotCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? source = null,
    Object? note = freezed,
    Object? directions = null,
    Object? markerLabel = freezed,
    Object? images = null,
    Object? serviceTimeNote = freezed,
    Object? nowAvailable = freezed,
    Object? groupedTotalUnitPricesThisMonthNextMonth = null,
    Object? groupedTotalUnitPricesThisMonthNextMonthByUser = null,
    Object? chargerSpotServiceTimes = null,
    Object? chargerDevices = null,
    Object? gogoevChargerDevices = null,
    Object? address = freezed,
    Object? facilityType = freezed,
    Object? phoneNumber = freezed,
    Object? parkingFee = freezed,
    Object? advanceContact = freezed,
    Object? gogoevNotes = null,
    Object? maintenanceNote = null,
    Object? maintenanceStatus = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ModelSource,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      directions: null == directions
          ? _value.directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      markerLabel: freezed == markerLabel
          ? _value.markerLabel
          : markerLabel // ignore: cast_nullable_to_non_nullable
              as MarkerLabel?,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ChargerSpotImage>,
      serviceTimeNote: freezed == serviceTimeNote
          ? _value.serviceTimeNote
          : serviceTimeNote // ignore: cast_nullable_to_non_nullable
              as String?,
      nowAvailable: freezed == nowAvailable
          ? _value.nowAvailable
          : nowAvailable // ignore: cast_nullable_to_non_nullable
              as NowAvailable?,
      groupedTotalUnitPricesThisMonthNextMonth: null ==
              groupedTotalUnitPricesThisMonthNextMonth
          ? _value.groupedTotalUnitPricesThisMonthNextMonth
          : groupedTotalUnitPricesThisMonthNextMonth // ignore: cast_nullable_to_non_nullable
              as List<GroupedTotalUnitPricesThisMonthNextMonth>,
      groupedTotalUnitPricesThisMonthNextMonthByUser: null ==
              groupedTotalUnitPricesThisMonthNextMonthByUser
          ? _value.groupedTotalUnitPricesThisMonthNextMonthByUser
          : groupedTotalUnitPricesThisMonthNextMonthByUser // ignore: cast_nullable_to_non_nullable
              as List<GroupedTotalUnitPricesThisMonthNextMonthByUser>,
      chargerSpotServiceTimes: null == chargerSpotServiceTimes
          ? _value.chargerSpotServiceTimes
          : chargerSpotServiceTimes // ignore: cast_nullable_to_non_nullable
              as List<ChargerSpotServiceTime>,
      chargerDevices: null == chargerDevices
          ? _value.chargerDevices
          : chargerDevices // ignore: cast_nullable_to_non_nullable
              as List<ChargerDevice>,
      gogoevChargerDevices: null == gogoevChargerDevices
          ? _value.gogoevChargerDevices
          : gogoevChargerDevices // ignore: cast_nullable_to_non_nullable
              as List<GogoevChargerDevice>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parkingFee: freezed == parkingFee
          ? _value.parkingFee
          : parkingFee // ignore: cast_nullable_to_non_nullable
              as String?,
      advanceContact: freezed == advanceContact
          ? _value.advanceContact
          : advanceContact // ignore: cast_nullable_to_non_nullable
              as String?,
      gogoevNotes: null == gogoevNotes
          ? _value.gogoevNotes
          : gogoevNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maintenanceNote: null == maintenanceNote
          ? _value.maintenanceNote
          : maintenanceNote // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      maintenanceStatus: freezed == maintenanceStatus
          ? _value.maintenanceStatus
          : maintenanceStatus // ignore: cast_nullable_to_non_nullable
              as MaintenanceStatus?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChargerSpotCopyWith<$Res>
    implements $ChargerSpotCopyWith<$Res> {
  factory _$$_ChargerSpotCopyWith(
          _$_ChargerSpot value, $Res Function(_$_ChargerSpot) then) =
      __$$_ChargerSpotCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuid,
      String name,
      num latitude,
      num longitude,
      ModelSource source,
      String? note,
      List<String> directions,
      MarkerLabel? markerLabel,
      List<ChargerSpotImage> images,
      String? serviceTimeNote,
      NowAvailable? nowAvailable,
      List<GroupedTotalUnitPricesThisMonthNextMonth>
          groupedTotalUnitPricesThisMonthNextMonth,
      List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
          groupedTotalUnitPricesThisMonthNextMonthByUser,
      List<ChargerSpotServiceTime> chargerSpotServiceTimes,
      List<ChargerDevice> chargerDevices,
      List<GogoevChargerDevice> gogoevChargerDevices,
      String? address,
      String? facilityType,
      String? phoneNumber,
      String? parkingFee,
      String? advanceContact,
      List<String> gogoevNotes,
      List<String?> maintenanceNote,
      MaintenanceStatus? maintenanceStatus});
}

/// @nodoc
class __$$_ChargerSpotCopyWithImpl<$Res>
    extends _$ChargerSpotCopyWithImpl<$Res, _$_ChargerSpot>
    implements _$$_ChargerSpotCopyWith<$Res> {
  __$$_ChargerSpotCopyWithImpl(
      _$_ChargerSpot _value, $Res Function(_$_ChargerSpot) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? name = null,
    Object? latitude = null,
    Object? longitude = null,
    Object? source = null,
    Object? note = freezed,
    Object? directions = null,
    Object? markerLabel = freezed,
    Object? images = null,
    Object? serviceTimeNote = freezed,
    Object? nowAvailable = freezed,
    Object? groupedTotalUnitPricesThisMonthNextMonth = null,
    Object? groupedTotalUnitPricesThisMonthNextMonthByUser = null,
    Object? chargerSpotServiceTimes = null,
    Object? chargerDevices = null,
    Object? gogoevChargerDevices = null,
    Object? address = freezed,
    Object? facilityType = freezed,
    Object? phoneNumber = freezed,
    Object? parkingFee = freezed,
    Object? advanceContact = freezed,
    Object? gogoevNotes = null,
    Object? maintenanceNote = null,
    Object? maintenanceStatus = freezed,
  }) {
    return _then(_$_ChargerSpot(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as num,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as num,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as ModelSource,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      directions: null == directions
          ? _value._directions
          : directions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      markerLabel: freezed == markerLabel
          ? _value.markerLabel
          : markerLabel // ignore: cast_nullable_to_non_nullable
              as MarkerLabel?,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ChargerSpotImage>,
      serviceTimeNote: freezed == serviceTimeNote
          ? _value.serviceTimeNote
          : serviceTimeNote // ignore: cast_nullable_to_non_nullable
              as String?,
      nowAvailable: freezed == nowAvailable
          ? _value.nowAvailable
          : nowAvailable // ignore: cast_nullable_to_non_nullable
              as NowAvailable?,
      groupedTotalUnitPricesThisMonthNextMonth: null ==
              groupedTotalUnitPricesThisMonthNextMonth
          ? _value._groupedTotalUnitPricesThisMonthNextMonth
          : groupedTotalUnitPricesThisMonthNextMonth // ignore: cast_nullable_to_non_nullable
              as List<GroupedTotalUnitPricesThisMonthNextMonth>,
      groupedTotalUnitPricesThisMonthNextMonthByUser: null ==
              groupedTotalUnitPricesThisMonthNextMonthByUser
          ? _value._groupedTotalUnitPricesThisMonthNextMonthByUser
          : groupedTotalUnitPricesThisMonthNextMonthByUser // ignore: cast_nullable_to_non_nullable
              as List<GroupedTotalUnitPricesThisMonthNextMonthByUser>,
      chargerSpotServiceTimes: null == chargerSpotServiceTimes
          ? _value._chargerSpotServiceTimes
          : chargerSpotServiceTimes // ignore: cast_nullable_to_non_nullable
              as List<ChargerSpotServiceTime>,
      chargerDevices: null == chargerDevices
          ? _value._chargerDevices
          : chargerDevices // ignore: cast_nullable_to_non_nullable
              as List<ChargerDevice>,
      gogoevChargerDevices: null == gogoevChargerDevices
          ? _value._gogoevChargerDevices
          : gogoevChargerDevices // ignore: cast_nullable_to_non_nullable
              as List<GogoevChargerDevice>,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      facilityType: freezed == facilityType
          ? _value.facilityType
          : facilityType // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: freezed == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      parkingFee: freezed == parkingFee
          ? _value.parkingFee
          : parkingFee // ignore: cast_nullable_to_non_nullable
              as String?,
      advanceContact: freezed == advanceContact
          ? _value.advanceContact
          : advanceContact // ignore: cast_nullable_to_non_nullable
              as String?,
      gogoevNotes: null == gogoevNotes
          ? _value._gogoevNotes
          : gogoevNotes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maintenanceNote: null == maintenanceNote
          ? _value._maintenanceNote
          : maintenanceNote // ignore: cast_nullable_to_non_nullable
              as List<String?>,
      maintenanceStatus: freezed == maintenanceStatus
          ? _value.maintenanceStatus
          : maintenanceStatus // ignore: cast_nullable_to_non_nullable
              as MaintenanceStatus?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_ChargerSpot implements _ChargerSpot {
  const _$_ChargerSpot(
      {required this.uuid,
      required this.name,
      required this.latitude,
      required this.longitude,
      required this.source,
      this.note,
      final List<String> directions = const [],
      this.markerLabel,
      final List<ChargerSpotImage> images = const [],
      this.serviceTimeNote,
      this.nowAvailable,
      final List<GroupedTotalUnitPricesThisMonthNextMonth>
          groupedTotalUnitPricesThisMonthNextMonth = const [],
      final List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
          groupedTotalUnitPricesThisMonthNextMonthByUser = const [],
      final List<ChargerSpotServiceTime> chargerSpotServiceTimes = const [],
      final List<ChargerDevice> chargerDevices = const [],
      final List<GogoevChargerDevice> gogoevChargerDevices = const [],
      this.address,
      this.facilityType,
      this.phoneNumber,
      this.parkingFee,
      this.advanceContact,
      final List<String> gogoevNotes = const [],
      final List<String?> maintenanceNote = const [],
      this.maintenanceStatus})
      : _directions = directions,
        _images = images,
        _groupedTotalUnitPricesThisMonthNextMonth =
            groupedTotalUnitPricesThisMonthNextMonth,
        _groupedTotalUnitPricesThisMonthNextMonthByUser =
            groupedTotalUnitPricesThisMonthNextMonthByUser,
        _chargerSpotServiceTimes = chargerSpotServiceTimes,
        _chargerDevices = chargerDevices,
        _gogoevChargerDevices = gogoevChargerDevices,
        _gogoevNotes = gogoevNotes,
        _maintenanceNote = maintenanceNote;

  factory _$_ChargerSpot.fromJson(Map<String, dynamic> json) =>
      _$$_ChargerSpotFromJson(json);

  @override
  final String uuid;
  @override
  final String name;
  @override
  final num latitude;
  @override
  final num longitude;
  @override
  final ModelSource source;
  @override
  final String? note;
  final List<String> _directions;
  @override
  @JsonKey()
  List<String> get directions {
    if (_directions is EqualUnmodifiableListView) return _directions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_directions);
  }

  @override
  final MarkerLabel? markerLabel;
  final List<ChargerSpotImage> _images;
  @override
  @JsonKey()
  List<ChargerSpotImage> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  final String? serviceTimeNote;
  @override
  final NowAvailable? nowAvailable;
  final List<GroupedTotalUnitPricesThisMonthNextMonth>
      _groupedTotalUnitPricesThisMonthNextMonth;
  @override
  @JsonKey()
  List<GroupedTotalUnitPricesThisMonthNextMonth>
      get groupedTotalUnitPricesThisMonthNextMonth {
    if (_groupedTotalUnitPricesThisMonthNextMonth is EqualUnmodifiableListView)
      return _groupedTotalUnitPricesThisMonthNextMonth;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groupedTotalUnitPricesThisMonthNextMonth);
  }

  final List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
      _groupedTotalUnitPricesThisMonthNextMonthByUser;
  @override
  @JsonKey()
  List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
      get groupedTotalUnitPricesThisMonthNextMonthByUser {
    if (_groupedTotalUnitPricesThisMonthNextMonthByUser
        is EqualUnmodifiableListView)
      return _groupedTotalUnitPricesThisMonthNextMonthByUser;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(
        _groupedTotalUnitPricesThisMonthNextMonthByUser);
  }

  final List<ChargerSpotServiceTime> _chargerSpotServiceTimes;
  @override
  @JsonKey()
  List<ChargerSpotServiceTime> get chargerSpotServiceTimes {
    if (_chargerSpotServiceTimes is EqualUnmodifiableListView)
      return _chargerSpotServiceTimes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chargerSpotServiceTimes);
  }

  final List<ChargerDevice> _chargerDevices;
  @override
  @JsonKey()
  List<ChargerDevice> get chargerDevices {
    if (_chargerDevices is EqualUnmodifiableListView) return _chargerDevices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chargerDevices);
  }

  final List<GogoevChargerDevice> _gogoevChargerDevices;
  @override
  @JsonKey()
  List<GogoevChargerDevice> get gogoevChargerDevices {
    if (_gogoevChargerDevices is EqualUnmodifiableListView)
      return _gogoevChargerDevices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gogoevChargerDevices);
  }

  @override
  final String? address;
  @override
  final String? facilityType;
  @override
  final String? phoneNumber;
  @override
  final String? parkingFee;
  @override
  final String? advanceContact;
  final List<String> _gogoevNotes;
  @override
  @JsonKey()
  List<String> get gogoevNotes {
    if (_gogoevNotes is EqualUnmodifiableListView) return _gogoevNotes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_gogoevNotes);
  }

  final List<String?> _maintenanceNote;
  @override
  @JsonKey()
  List<String?> get maintenanceNote {
    if (_maintenanceNote is EqualUnmodifiableListView) return _maintenanceNote;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_maintenanceNote);
  }

  @override
  final MaintenanceStatus? maintenanceStatus;

  @override
  String toString() {
    return 'ChargerSpot(uuid: $uuid, name: $name, latitude: $latitude, longitude: $longitude, source: $source, note: $note, directions: $directions, markerLabel: $markerLabel, images: $images, serviceTimeNote: $serviceTimeNote, nowAvailable: $nowAvailable, groupedTotalUnitPricesThisMonthNextMonth: $groupedTotalUnitPricesThisMonthNextMonth, groupedTotalUnitPricesThisMonthNextMonthByUser: $groupedTotalUnitPricesThisMonthNextMonthByUser, chargerSpotServiceTimes: $chargerSpotServiceTimes, chargerDevices: $chargerDevices, gogoevChargerDevices: $gogoevChargerDevices, address: $address, facilityType: $facilityType, phoneNumber: $phoneNumber, parkingFee: $parkingFee, advanceContact: $advanceContact, gogoevNotes: $gogoevNotes, maintenanceNote: $maintenanceNote, maintenanceStatus: $maintenanceStatus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChargerSpot &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.note, note) || other.note == note) &&
            const DeepCollectionEquality()
                .equals(other._directions, _directions) &&
            (identical(other.markerLabel, markerLabel) ||
                other.markerLabel == markerLabel) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.serviceTimeNote, serviceTimeNote) ||
                other.serviceTimeNote == serviceTimeNote) &&
            (identical(other.nowAvailable, nowAvailable) ||
                other.nowAvailable == nowAvailable) &&
            const DeepCollectionEquality().equals(
                other._groupedTotalUnitPricesThisMonthNextMonth,
                _groupedTotalUnitPricesThisMonthNextMonth) &&
            const DeepCollectionEquality().equals(
                other._groupedTotalUnitPricesThisMonthNextMonthByUser,
                _groupedTotalUnitPricesThisMonthNextMonthByUser) &&
            const DeepCollectionEquality().equals(
                other._chargerSpotServiceTimes, _chargerSpotServiceTimes) &&
            const DeepCollectionEquality()
                .equals(other._chargerDevices, _chargerDevices) &&
            const DeepCollectionEquality()
                .equals(other._gogoevChargerDevices, _gogoevChargerDevices) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.facilityType, facilityType) ||
                other.facilityType == facilityType) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.parkingFee, parkingFee) ||
                other.parkingFee == parkingFee) &&
            (identical(other.advanceContact, advanceContact) ||
                other.advanceContact == advanceContact) &&
            const DeepCollectionEquality()
                .equals(other._gogoevNotes, _gogoevNotes) &&
            const DeepCollectionEquality()
                .equals(other._maintenanceNote, _maintenanceNote) &&
            (identical(other.maintenanceStatus, maintenanceStatus) ||
                other.maintenanceStatus == maintenanceStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uuid,
        name,
        latitude,
        longitude,
        source,
        note,
        const DeepCollectionEquality().hash(_directions),
        markerLabel,
        const DeepCollectionEquality().hash(_images),
        serviceTimeNote,
        nowAvailable,
        const DeepCollectionEquality()
            .hash(_groupedTotalUnitPricesThisMonthNextMonth),
        const DeepCollectionEquality()
            .hash(_groupedTotalUnitPricesThisMonthNextMonthByUser),
        const DeepCollectionEquality().hash(_chargerSpotServiceTimes),
        const DeepCollectionEquality().hash(_chargerDevices),
        const DeepCollectionEquality().hash(_gogoevChargerDevices),
        address,
        facilityType,
        phoneNumber,
        parkingFee,
        advanceContact,
        const DeepCollectionEquality().hash(_gogoevNotes),
        const DeepCollectionEquality().hash(_maintenanceNote),
        maintenanceStatus
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChargerSpotCopyWith<_$_ChargerSpot> get copyWith =>
      __$$_ChargerSpotCopyWithImpl<_$_ChargerSpot>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChargerSpotToJson(
      this,
    );
  }
}

abstract class _ChargerSpot implements ChargerSpot {
  const factory _ChargerSpot(
      {required final String uuid,
      required final String name,
      required final num latitude,
      required final num longitude,
      required final ModelSource source,
      final String? note,
      final List<String> directions,
      final MarkerLabel? markerLabel,
      final List<ChargerSpotImage> images,
      final String? serviceTimeNote,
      final NowAvailable? nowAvailable,
      final List<GroupedTotalUnitPricesThisMonthNextMonth>
          groupedTotalUnitPricesThisMonthNextMonth,
      final List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
          groupedTotalUnitPricesThisMonthNextMonthByUser,
      final List<ChargerSpotServiceTime> chargerSpotServiceTimes,
      final List<ChargerDevice> chargerDevices,
      final List<GogoevChargerDevice> gogoevChargerDevices,
      final String? address,
      final String? facilityType,
      final String? phoneNumber,
      final String? parkingFee,
      final String? advanceContact,
      final List<String> gogoevNotes,
      final List<String?> maintenanceNote,
      final MaintenanceStatus? maintenanceStatus}) = _$_ChargerSpot;

  factory _ChargerSpot.fromJson(Map<String, dynamic> json) =
      _$_ChargerSpot.fromJson;

  @override
  String get uuid;
  @override
  String get name;
  @override
  num get latitude;
  @override
  num get longitude;
  @override
  ModelSource get source;
  @override
  String? get note;
  @override
  List<String> get directions;
  @override
  MarkerLabel? get markerLabel;
  @override
  List<ChargerSpotImage> get images;
  @override
  String? get serviceTimeNote;
  @override
  NowAvailable? get nowAvailable;
  @override
  List<GroupedTotalUnitPricesThisMonthNextMonth>
      get groupedTotalUnitPricesThisMonthNextMonth;
  @override
  List<GroupedTotalUnitPricesThisMonthNextMonthByUser>
      get groupedTotalUnitPricesThisMonthNextMonthByUser;
  @override
  List<ChargerSpotServiceTime> get chargerSpotServiceTimes;
  @override
  List<ChargerDevice> get chargerDevices;
  @override
  List<GogoevChargerDevice> get gogoevChargerDevices;
  @override
  String? get address;
  @override
  String? get facilityType;
  @override
  String? get phoneNumber;
  @override
  String? get parkingFee;
  @override
  String? get advanceContact;
  @override
  List<String> get gogoevNotes;
  @override
  List<String?> get maintenanceNote;
  @override
  MaintenanceStatus? get maintenanceStatus;
  @override
  @JsonKey(ignore: true)
  _$$_ChargerSpotCopyWith<_$_ChargerSpot> get copyWith =>
      throw _privateConstructorUsedError;
}
