// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'leaderboard_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReviewListData _$$_ReviewListDataFromJson(Map<String, dynamic> json) =>
    _$_ReviewListData(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? 'http/roshan.com',
      review: json['review'] as String?,
      foodietype: json['foodietype'] as String?,
      followed: json['followed'] as String?,
      photos: json['photos'] as String?,
    );

Map<String, dynamic> _$$_ReviewListDataToJson(_$_ReviewListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'review': instance.review,
      'foodietype': instance.foodietype,
      'followed': instance.followed,
      'photos': instance.photos,
    };
