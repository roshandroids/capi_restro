import 'package:capi_restro/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'legendary_food_list.freezed.dart';
part 'legendary_food_list.g.dart';

@freezed
class LegendaryFoodListData with _$LegendaryFoodListData {
  const factory LegendaryFoodListData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
    String? rating,
    String? share,
    String? photo,
    String? bookmark,
    String? review,
    String? place,
    String? starttime,
    String? endtime,
    String? type,
  }) = _LegendaryFoodListData;
  factory LegendaryFoodListData.fromJson(Map<String, dynamic> json) =>
      _$LegendaryFoodListDataFromJson(json);
}

final legendaryfoodList = [
  {
    'id': 1,
    'name': 'Lombar Pizza',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': 'East 46th Street',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Pizza, Italian'
  },
  {
    'id': 2,
    'name': 'Sushi Bar',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': '210 Salt Pond Rd.',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Sushi, Japan'
  },
  {
    'id': 3,
    'name': 'Lombar Pizza',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': 'East 46th Street',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Pizza, Italian'
  },
  {
    'id': 4,
    'name': 'Sushi Bar',
    'image': Assets.nearBy,
    'rating': '4.8',
    'share': '603',
    'review': '953',
    'photo': '115',
    'bookmark': '1478',
    'place': '210 Salt Pond Rd.',
    'starttime': '11:30AM',
    'endtime': '11PM',
    'type': 'Sushi, Japan'
  },
];
