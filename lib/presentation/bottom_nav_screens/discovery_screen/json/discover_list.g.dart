// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DiscoverListData _$$_DiscoverListDataFromJson(Map<String, dynamic> json) =>
    _$_DiscoverListData(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? 'http/roshan.com',
      rating: json['rating'] as String?,
      place: json['place'] as String?,
      starttime: json['starttime'] as String?,
      endtime: json['endtime'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_DiscoverListDataToJson(_$_DiscoverListData instance) =>
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
