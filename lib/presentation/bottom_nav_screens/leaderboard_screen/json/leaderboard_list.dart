import 'package:capi_restro/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'leaderboard_list.freezed.dart';
part 'leaderboard_list.g.dart';

@freezed
class ReviewListData with _$ReviewListData {
  const factory ReviewListData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
    String? review,
    String? foodietype,
    String? followed,
    String? photos,
  }) = _ReviewListData;
  factory ReviewListData.fromJson(Map<String, dynamic> json) =>
      _$ReviewListDataFromJson(json);
}

final reviewList = [
  {
    'id': 1,
    'name': 'Jayson Terrell',
    'image': Assets.nearBy,
    'review': '385',
    'photos': '145',
    'foodietype': '1',
    'followed': 'false'
  },
  {
    'id': 2,
    'name': 'Hibe Neted',
    'image': Assets.desertsBakes,
    'review': '385',
    'photos': '145',
    'foodietype': '2',
    'followed': 'true'
  },
  {
    'id': 3,
    'name': 'Lilja Peltola',
    'image': Assets.diningOut,
    'review': '385',
    'photos': '145',
    'foodietype': '2',
    'followed': 'true'
  },
  {
    'id': 4,
    'name': 'Natalia Sanz',
    'image': Assets.drinksNightlife,
    'review': '385',
    'photos': '145',
    'foodietype': '3',
    'followed': 'false'
  },
  {
    'id': 5,
    'name': 'Emeline Duarte',
    'image': Assets.drinksNightlife,
    'review': '385',
    'photos': '145',
    'foodietype': '3',
    'followed': 'true'
  },
  {
    'id': 6,
    'name': 'Mylan Pierre',
    'image': Assets.drinksNightlife,
    'review': '385',
    'photos': '145',
    'foodietype': '3',
    'followed': 'false'
  }
];
