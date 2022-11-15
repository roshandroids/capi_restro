// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'brand_outlet_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BrandListData _$BrandListDataFromJson(Map<String, dynamic> json) {
  return _BrandListData.fromJson(json);
}

/// @nodoc
mixin _$BrandListData {
  String get name => throw _privateConstructorUsedError;
  int get outlets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BrandListDataCopyWith<BrandListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandListDataCopyWith<$Res> {
  factory $BrandListDataCopyWith(
          BrandListData value, $Res Function(BrandListData) then) =
      _$BrandListDataCopyWithImpl<$Res, BrandListData>;
  @useResult
  $Res call({String name, int outlets});
}

/// @nodoc
class _$BrandListDataCopyWithImpl<$Res, $Val extends BrandListData>
    implements $BrandListDataCopyWith<$Res> {
  _$BrandListDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? outlets = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outlets: null == outlets
          ? _value.outlets
          : outlets // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BrandListDataCopyWith<$Res>
    implements $BrandListDataCopyWith<$Res> {
  factory _$$_BrandListDataCopyWith(
          _$_BrandListData value, $Res Function(_$_BrandListData) then) =
      __$$_BrandListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int outlets});
}

/// @nodoc
class __$$_BrandListDataCopyWithImpl<$Res>
    extends _$BrandListDataCopyWithImpl<$Res, _$_BrandListData>
    implements _$$_BrandListDataCopyWith<$Res> {
  __$$_BrandListDataCopyWithImpl(
      _$_BrandListData _value, $Res Function(_$_BrandListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? outlets = null,
  }) {
    return _then(_$_BrandListData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      outlets: null == outlets
          ? _value.outlets
          : outlets // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BrandListData implements _BrandListData {
  const _$_BrandListData({required this.name, this.outlets = 0});

  factory _$_BrandListData.fromJson(Map<String, dynamic> json) =>
      _$$_BrandListDataFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final int outlets;

  @override
  String toString() {
    return 'BrandListData(name: $name, outlets: $outlets)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BrandListData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.outlets, outlets) || other.outlets == outlets));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, outlets);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BrandListDataCopyWith<_$_BrandListData> get copyWith =>
      __$$_BrandListDataCopyWithImpl<_$_BrandListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BrandListDataToJson(
      this,
    );
  }
}

abstract class _BrandListData implements BrandListData {
  const factory _BrandListData(
      {required final String name, final int outlets}) = _$_BrandListData;

  factory _BrandListData.fromJson(Map<String, dynamic> json) =
      _$_BrandListData.fromJson;

  @override
  String get name;
  @override
  int get outlets;
  @override
  @JsonKey(ignore: true)
  _$$_BrandListDataCopyWith<_$_BrandListData> get copyWith =>
      throw _privateConstructorUsedError;
}
