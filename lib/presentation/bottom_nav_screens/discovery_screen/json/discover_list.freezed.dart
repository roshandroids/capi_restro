// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'discover_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DiscoverListData _$DiscoverListDataFromJson(Map<String, dynamic> json) {
  return _DiscoverListData.fromJson(json);
}

/// @nodoc
mixin _$DiscoverListData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  String? get starttime => throw _privateConstructorUsedError;
  String? get endtime => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DiscoverListDataCopyWith<DiscoverListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DiscoverListDataCopyWith<$Res> {
  factory $DiscoverListDataCopyWith(
          DiscoverListData value, $Res Function(DiscoverListData) then) =
      _$DiscoverListDataCopyWithImpl<$Res, DiscoverListData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String? rating,
      String? place,
      String? starttime,
      String? endtime,
      String? type});
}

/// @nodoc
class _$DiscoverListDataCopyWithImpl<$Res, $Val extends DiscoverListData>
    implements $DiscoverListDataCopyWith<$Res> {
  _$DiscoverListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? rating = freezed,
    Object? place = freezed,
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      starttime: freezed == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DiscoverListDataCopyWith<$Res>
    implements $DiscoverListDataCopyWith<$Res> {
  factory _$$_DiscoverListDataCopyWith(
          _$_DiscoverListData value, $Res Function(_$_DiscoverListData) then) =
      __$$_DiscoverListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String? rating,
      String? place,
      String? starttime,
      String? endtime,
      String? type});
}

/// @nodoc
class __$$_DiscoverListDataCopyWithImpl<$Res>
    extends _$DiscoverListDataCopyWithImpl<$Res, _$_DiscoverListData>
    implements _$$_DiscoverListDataCopyWith<$Res> {
  __$$_DiscoverListDataCopyWithImpl(
      _$_DiscoverListData _value, $Res Function(_$_DiscoverListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? rating = freezed,
    Object? place = freezed,
    Object? starttime = freezed,
    Object? endtime = freezed,
    Object? type = freezed,
  }) {
    return _then(_$_DiscoverListData(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      starttime: freezed == starttime
          ? _value.starttime
          : starttime // ignore: cast_nullable_to_non_nullable
              as String?,
      endtime: freezed == endtime
          ? _value.endtime
          : endtime // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DiscoverListData implements _DiscoverListData {
  const _$_DiscoverListData(
      {required this.id,
      required this.name,
      this.image = 'http/roshan.com',
      this.rating,
      this.place,
      this.starttime,
      this.endtime,
      this.type});

  factory _$_DiscoverListData.fromJson(Map<String, dynamic> json) =>
      _$$_DiscoverListDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  final String? rating;
  @override
  final String? place;
  @override
  final String? starttime;
  @override
  final String? endtime;
  @override
  final String? type;

  @override
  String toString() {
    return 'DiscoverListData(id: $id, name: $name, image: $image, rating: $rating, place: $place, starttime: $starttime, endtime: $endtime, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DiscoverListData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.starttime, starttime) ||
                other.starttime == starttime) &&
            (identical(other.endtime, endtime) || other.endtime == endtime) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, rating, place, starttime, endtime, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DiscoverListDataCopyWith<_$_DiscoverListData> get copyWith =>
      __$$_DiscoverListDataCopyWithImpl<_$_DiscoverListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DiscoverListDataToJson(
      this,
    );
  }
}

abstract class _DiscoverListData implements DiscoverListData {
  const factory _DiscoverListData(
      {required final int id,
      required final String name,
      final String image,
      final String? rating,
      final String? place,
      final String? starttime,
      final String? endtime,
      final String? type}) = _$_DiscoverListData;

  factory _DiscoverListData.fromJson(Map<String, dynamic> json) =
      _$_DiscoverListData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String? get rating;
  @override
  String? get place;
  @override
  String? get starttime;
  @override
  String? get endtime;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_DiscoverListDataCopyWith<_$_DiscoverListData> get copyWith =>
      throw _privateConstructorUsedError;
}
