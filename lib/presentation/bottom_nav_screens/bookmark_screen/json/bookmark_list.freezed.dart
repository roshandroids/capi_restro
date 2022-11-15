// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bookmark_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BookmarkListData _$BookmarkListDataFromJson(Map<String, dynamic> json) {
  return _BookmarkListData.fromJson(json);
}

/// @nodoc
mixin _$BookmarkListData {
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
  $BookmarkListDataCopyWith<BookmarkListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookmarkListDataCopyWith<$Res> {
  factory $BookmarkListDataCopyWith(
          BookmarkListData value, $Res Function(BookmarkListData) then) =
      _$BookmarkListDataCopyWithImpl<$Res, BookmarkListData>;
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
class _$BookmarkListDataCopyWithImpl<$Res, $Val extends BookmarkListData>
    implements $BookmarkListDataCopyWith<$Res> {
  _$BookmarkListDataCopyWithImpl(this._value, this._then);

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
abstract class _$$_BookmarkListDataCopyWith<$Res>
    implements $BookmarkListDataCopyWith<$Res> {
  factory _$$_BookmarkListDataCopyWith(
          _$_BookmarkListData value, $Res Function(_$_BookmarkListData) then) =
      __$$_BookmarkListDataCopyWithImpl<$Res>;
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
class __$$_BookmarkListDataCopyWithImpl<$Res>
    extends _$BookmarkListDataCopyWithImpl<$Res, _$_BookmarkListData>
    implements _$$_BookmarkListDataCopyWith<$Res> {
  __$$_BookmarkListDataCopyWithImpl(
      _$_BookmarkListData _value, $Res Function(_$_BookmarkListData) _then)
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
    return _then(_$_BookmarkListData(
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
class _$_BookmarkListData implements _BookmarkListData {
  const _$_BookmarkListData(
      {required this.id,
      required this.name,
      this.image = 'http/roshan.com',
      this.rating,
      this.place,
      this.starttime,
      this.endtime,
      this.type});

  factory _$_BookmarkListData.fromJson(Map<String, dynamic> json) =>
      _$$_BookmarkListDataFromJson(json);

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
    return 'BookmarkListData(id: $id, name: $name, image: $image, rating: $rating, place: $place, starttime: $starttime, endtime: $endtime, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BookmarkListData &&
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
  _$$_BookmarkListDataCopyWith<_$_BookmarkListData> get copyWith =>
      __$$_BookmarkListDataCopyWithImpl<_$_BookmarkListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BookmarkListDataToJson(
      this,
    );
  }
}

abstract class _BookmarkListData implements BookmarkListData {
  const factory _BookmarkListData(
      {required final int id,
      required final String name,
      final String image,
      final String? rating,
      final String? place,
      final String? starttime,
      final String? endtime,
      final String? type}) = _$_BookmarkListData;

  factory _BookmarkListData.fromJson(Map<String, dynamic> json) =
      _$_BookmarkListData.fromJson;

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
  _$$_BookmarkListDataCopyWith<_$_BookmarkListData> get copyWith =>
      throw _privateConstructorUsedError;
}
