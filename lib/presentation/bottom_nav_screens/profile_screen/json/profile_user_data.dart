// import 'package:capi_restro/core/core.dart';

// final profileuserData = [
//   {
//     'id': '1',
//     'name': 'Lilja Peltola',
//     'image': Assets.nearBy,
//     'reviews': '953',
//     'network': '603',
//     'foodietype': '3',
//     'place': 'New York City',
//     'followers': '203',
//     'following': '400',
//     'comment': '358',
//     'photos': '216',
//   },
// ];

import 'package:capi_restro/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_user_data.freezed.dart';
part 'profile_user_data.g.dart';

@freezed
class ProfileUserData with _$ProfileUserData {
  const factory ProfileUserData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
    String? reviews,
    String? network,
    String? foodietype,
    String? place,
    String? followers,
    String? following,
    String? comment,
    String? photos,
  }) = _ProfileUserData;
  factory ProfileUserData.fromJson(Map<String, dynamic> json) =>
      _$ProfileUserDataFromJson(json);
}

final profileuserData = {
  'id': 1,
  'name': 'Lilja Peltola',
  'image': Assets.nearBy,
  'reviews': '953',
  'network': '603',
  'foodietype': '3',
  'place': 'New York City',
  'followers': '203',
  'following': '400',
  'comment': '358',
  'photos': '216',
};
