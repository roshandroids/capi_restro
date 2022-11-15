// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'leaderboard_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReviewListData _$ReviewListDataFromJson(Map<String, dynamic> json) {
  return _ReviewListData.fromJson(json);
}

/// @nodoc
mixin _$ReviewListData {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String? get review => throw _privateConstructorUsedError;
  String? get foodietype => throw _privateConstructorUsedError;
  String? get followed => throw _privateConstructorUsedError;
  String? get photos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewListDataCopyWith<ReviewListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewListDataCopyWith<$Res> {
  factory $ReviewListDataCopyWith(
          ReviewListData value, $Res Function(ReviewListData) then) =
      _$ReviewListDataCopyWithImpl<$Res, ReviewListData>;
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String? review,
      String? foodietype,
      String? followed,
      String? photos});
}

/// @nodoc
class _$ReviewListDataCopyWithImpl<$Res, $Val extends ReviewListData>
    implements $ReviewListDataCopyWith<$Res> {
  _$ReviewListDataCopyWithImpl(this._value, this._then);

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
    Object? review = freezed,
    Object? foodietype = freezed,
    Object? followed = freezed,
    Object? photos = freezed,
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
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      foodietype: freezed == foodietype
          ? _value.foodietype
          : foodietype // ignore: cast_nullable_to_non_nullable
              as String?,
      followed: freezed == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReviewListDataCopyWith<$Res>
    implements $ReviewListDataCopyWith<$Res> {
  factory _$$_ReviewListDataCopyWith(
          _$_ReviewListData value, $Res Function(_$_ReviewListData) then) =
      __$$_ReviewListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String image,
      String? review,
      String? foodietype,
      String? followed,
      String? photos});
}

/// @nodoc
class __$$_ReviewListDataCopyWithImpl<$Res>
    extends _$ReviewListDataCopyWithImpl<$Res, _$_ReviewListData>
    implements _$$_ReviewListDataCopyWith<$Res> {
  __$$_ReviewListDataCopyWithImpl(
      _$_ReviewListData _value, $Res Function(_$_ReviewListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? review = freezed,
    Object? foodietype = freezed,
    Object? followed = freezed,
    Object? photos = freezed,
  }) {
    return _then(_$_ReviewListData(
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
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      foodietype: freezed == foodietype
          ? _value.foodietype
          : foodietype // ignore: cast_nullable_to_non_nullable
              as String?,
      followed: freezed == followed
          ? _value.followed
          : followed // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReviewListData implements _ReviewListData {
  const _$_ReviewListData(
      {required this.id,
      required this.name,
      this.image = 'http/roshan.com',
      this.review,
      this.foodietype,
      this.followed,
      this.photos});

  factory _$_ReviewListData.fromJson(Map<String, dynamic> json) =>
      _$$_ReviewListDataFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @JsonKey()
  final String image;
  @override
  final String? review;
  @override
  final String? foodietype;
  @override
  final String? followed;
  @override
  final String? photos;

  @override
  String toString() {
    return 'ReviewListData(id: $id, name: $name, image: $image, review: $review, foodietype: $foodietype, followed: $followed, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReviewListData &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.review, review) || other.review == review) &&
            (identical(other.foodietype, foodietype) ||
                other.foodietype == foodietype) &&
            (identical(other.followed, followed) ||
                other.followed == followed) &&
            (identical(other.photos, photos) || other.photos == photos));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, image, review, foodietype, followed, photos);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReviewListDataCopyWith<_$_ReviewListData> get copyWith =>
      __$$_ReviewListDataCopyWithImpl<_$_ReviewListData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReviewListDataToJson(
      this,
    );
  }
}

abstract class _ReviewListData implements ReviewListData {
  const factory _ReviewListData(
      {required final int id,
      required final String name,
      final String image,
      final String? review,
      final String? foodietype,
      final String? followed,
      final String? photos}) = _$_ReviewListData;

  factory _ReviewListData.fromJson(Map<String, dynamic> json) =
      _$_ReviewListData.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get image;
  @override
  String? get review;
  @override
  String? get foodietype;
  @override
  String? get followed;
  @override
  String? get photos;
  @override
  @JsonKey(ignore: true)
  _$$_ReviewListDataCopyWith<_$_ReviewListData> get copyWith =>
      throw _privateConstructorUsedError;
}
