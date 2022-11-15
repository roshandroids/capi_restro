// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'legendary_food_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LegendaryFoodListData _$$_LegendaryFoodListDataFromJson(
        Map<String, dynamic> json) =>
    _$_LegendaryFoodListData(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? 'http/roshan.com',
      rating: json['rating'] as String?,
      share: json['share'] as String?,
      photo: json['photo'] as String?,
      bookmark: json['bookmark'] as String?,
      review: json['review'] as String?,
      place: json['place'] as String?,
      starttime: json['starttime'] as String?,
      endtime: json['endtime'] as String?,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_LegendaryFoodListDataToJson(
        _$_LegendaryFoodListData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'rating': instance.rating,
      'share': instance.share,
      'photo': instance.photo,
      'bookmark': instance.bookmark,
      'review': instance.review,
      'place': instance.place,
      'starttime': instance.starttime,
      'endtime': instance.endtime,
      'type': instance.type,
    };
