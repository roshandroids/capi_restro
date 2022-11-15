import 'package:capi_restro/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'discover_list.freezed.dart';
part 'discover_list.g.dart';

@freezed
class DiscoverListData with _$DiscoverListData {
  const factory DiscoverListData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
    String? rating,
    String? place,
    String? starttime,
    String? endtime,
    String? type,
  }) = _DiscoverListData;
  factory DiscoverListData.fromJson(Map<String, dynamic> json) =>
      _$DiscoverListDataFromJson(json);
}

final discoveryList = [
  {'id': 1, 'name': 'Nearby', 'image': Assets.nearBy, 'place': '34'},
  {
    'id': 2,
    'name': 'Desserts & Bakes',
    'image': Assets.desertsBakes,
    'place': '15'
  },
  {'id': 3, 'name': 'Dining Out', 'image': Assets.diningOut, 'place': '28'},
  {
    'id': 4,
    'name': 'Drinks & Nigtlife',
    'image': Assets.drinksNightlife,
    'place': '42'
  },
  {'id': 5, 'name': 'Cafes & More', 'image': Assets.cafes, 'place': '29'},
  {'id': 6, 'name': 'Take-Away', 'image': Assets.takeAway, 'place': '21'},
];
