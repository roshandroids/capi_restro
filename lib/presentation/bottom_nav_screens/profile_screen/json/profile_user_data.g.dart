// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProfileUserData _$$_ProfileUserDataFromJson(Map<String, dynamic> json) =>
    _$_ProfileUserData(
      id: json['id'] as int,
      name: json['name'] as String,
      image: json['image'] as String? ?? 'http/roshan.com',
      reviews: json['reviews'] as String?,
      network: json['network'] as String?,
      foodietype: json['foodietype'] as String?,
      place: json['place'] as String?,
      followers: json['followers'] as String?,
      following: json['following'] as String?,
      comment: json['comment'] as String?,
      photos: json['photos'] as String?,
    );

Map<String, dynamic> _$$_ProfileUserDataToJson(_$_ProfileUserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'reviews': instance.reviews,
      'network': instance.network,
      'foodietype': instance.foodietype,
      'place': instance.place,
      'followers': instance.followers,
      'following': instance.following,
      'comment': instance.comment,
      'photos': instance.photos,
    };
