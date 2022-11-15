// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CollectionListData _$CollectionListDataFromJson(Map<String, dynamic> json) {
  return _CollectionListData.fromJson(json);
}

/// @nodoc
mixin _$CollectionListData {
  String get name => throw _privateConstructorUsedError;
  String get place => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CollectionListDataCopyWith<CollectionListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionListDataCopyWith<$Res> {
  factory $CollectionListDataCopyWith(
          CollectionListData value, $Res Function(CollectionListData) then) =
      _$CollectionListDataCopyWithImpl<$Res, CollectionListData>;
  @useResult
  $Res call({String name, String place});
}

/// @nodoc
class _$CollectionListDataCopyWithImpl<$Res, $Val extends CollectionListData>
    implements $CollectionListDataCopyWith<$Res> {
  _$CollectionListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? place = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CollectionListDataCopyWith<$Res>
    implements $CollectionListDataCopyWith<$Res> {
  factory _$$_CollectionListDataCopyWith(_$_CollectionListData value,
          $Res Function(_$_CollectionListData) then) =
      __$$_CollectionListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String place});
}

/// @nodoc
class __$$_CollectionListDataCopyWithImpl<$Res>
    extends _$CollectionListDataCopyWithImpl<$Res, _$_CollectionListData>
    implements _$$_CollectionListDataCopyWith<$Res> {
  __$$_CollectionListDataCopyWithImpl(
      _$_CollectionListData _value, $Res Function(_$_CollectionListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? place = null,
  }) {
    return _then(_$_CollectionListData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      place: null == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CollectionListData implements _CollectionListData {
  const _$_CollectionListData({required this.name, this.place = 'NA'});

  factory _$_CollectionListData.fromJson(Map<String, dynamic> json) =>
      _$$_CollectionListDataFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final String place;

  @override
  String toString() {
    return 'CollectionListData(name: $name, place: $place)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CollectionListData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.place, place) || other.place == place));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, place);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CollectionListDataCopyWith<_$_CollectionListData> get copyWith =>
      __$$_CollectionListDataCopyWithImpl<_$_CollectionListData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CollectionListDataToJson(
      this,
    );
  }
}

abstract class _CollectionListData implements CollectionListData {
  const factory _CollectionListData(
      {required final String name, final String place}) = _$_CollectionListData;

  factory _CollectionListData.fromJson(Map<String, dynamic> json) =
      _$_CollectionListData.fromJson;

  @override
  String get name;
  @override
  String get place;
  @override
  @JsonKey(ignore: true)
  _$$_CollectionListDataCopyWith<_$_CollectionListData> get copyWith =>
      throw _privateConstructorUsedError;
}
