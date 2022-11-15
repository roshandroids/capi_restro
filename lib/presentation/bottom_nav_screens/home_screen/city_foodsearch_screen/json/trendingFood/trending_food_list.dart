import 'package:capi_restro/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'trending_food_list.freezed.dart';
part 'trending_food_list.g.dart';

@freezed
class TrendingFoodListData with _$TrendingFoodListData {
  const factory TrendingFoodListData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
    String? rating,
    String? photo,
    String? bookmark,
    String? review,
    String? place,
    String? starttime,
    String? endtime,
    String? type,
  }) = _TrendingFoodListData;
  factory TrendingFoodListData.fromJson(Map<String, dynamic> json) =>
      _$TrendingFoodListDataFromJson(json);
}

final trendingfoodlist = [
  {
    'id': 1,
    'name': 'Seefood Lee',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': '210 Salt Pond Rd.',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Seefood, Spain'
  },
  {
    'id': 2,
    'name': 'Egg Tomato',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': 'East 46th Street',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Egg, Italian'
  },
  {
    'id': 3,
    'name': 'Seefood Lee',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': '210 Salt Pond Rd.',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Seefood, Spain'
  },
  {
    'id': 4,
    'name': 'Egg Tomato',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': 'East 46th Street',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Egg, Italian'
  }
];
