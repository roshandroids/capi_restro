// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cuisine_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CuisineListData _$CuisineListDataFromJson(Map<String, dynamic> json) {
  return _CuisineListData.fromJson(json);
}

/// @nodoc
mixin _$CuisineListData {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CuisineListDataCopyWith<CuisineListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CuisineListDataCopyWith<$Res> {
  factory $CuisineListDataCopyWith(
          CuisineListData value, $Res Function(CuisineListData) then) =
      _$CuisineListDataCopyWithImpl<$Res, CuisineListData>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CuisineListDataCopyWithImpl<$Res, $Val extends CuisineListData>
    implements $CuisineListDataCopyWith<$Res> {
  _$CuisineListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CuisineListDataCopyWith<$Res>
    implements $CuisineListDataCopyWith<$Res> {
  factory _$$_CuisineListDataCopyWith(
          _$_CuisineListData value, $Res Function(_$_CuisineListData) then) =
      __$$_CuisineListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CuisineListDataCopyWithImpl<$Res>
    extends _$CuisineListDataCopyWithImpl<$Res, _$_CuisineListData>
    implements _$$_CuisineListDataCopyWith<$Res> {
  __$$_CuisineListDataCopyWithImpl(
      _$_CuisineListData _value, $Res Function(_$_CuisineListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_CuisineListData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CuisineListData implements _CuisineListData {
  const _$_CuisineListData({required this.name});

  factory _$_CuisineListData.fromJson(Map<String, dynamic> json) =>
      _$$_CuisineListDataFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CuisineListData(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CuisineListData &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CuisineListDataCopyWith<_$_CuisineListData> get copyWith =>
      __$$_CuisineListDataCopyWithImpl<_$_CuisineListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CuisineListDataToJson(
      this,
    );
  }
}

abstract class _CuisineListData implements CuisineListData {
  const factory _CuisineListData({required final String name}) =
      _$_CuisineListData;

  factory _CuisineListData.fromJson(Map<String, dynamic> json) =
      _$_CuisineListData.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CuisineListDataCopyWith<_$_CuisineListData> get copyWith =>
      throw _privateConstructorUsedError;
}
