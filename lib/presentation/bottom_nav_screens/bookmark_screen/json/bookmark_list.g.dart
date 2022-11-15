// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookmark_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookmarkListData _$$_BookmarkListDataFromJson(Map<String, dynamic> json) =>
    _$_BookmarkListData(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? 'http/roshan.com',
      rating: json['rating'] as String?,
      place: json['place'] as String?,
      starttime: json['starttime'] as String?,
      endtime: json['endtime'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_BookmarkListDataToJson(_$_BookmarkListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'rating': instance.rating,
      'place': instance.place,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'type': instance.type,
    };
