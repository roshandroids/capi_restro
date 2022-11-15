import 'package:capi_restro/core/core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bookmark_list.freezed.dart';
part 'bookmark_list.g.dart';

@freezed
class BookmarkListData with _$BookmarkListData {
  const factory BookmarkListData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
    String? rating,
    String? place,
    String? starttime,
    String? endtime,
    String? type,
  }) = _BookmarkListData;
  factory BookmarkListData.fromJson(Map<String, dynamic> json) =>
      _$BookmarkListDataFromJson(json);
}

final bookmarkList = [
  {
    'id': 1,
    'name': 'Lombar Pizza',
    'image': Assets.nearBy,
    'rating': '4.8',
    'place': 'East 46th Street, New York',
    'starttime': '11:30am',
    'endtime': '11pm',
    'type': 'Pizza, Italian'
  },
  {
    'id': 2,
    'name': 'Pizza Hup',
    'image': Assets.desertsBakes,
    'rating': '3.9',
    'place': 'East 46th Street, New York',
    'starttime': '11:30am',
    'endtime': '11pm',
    'type': 'Pizza, Italian'
  },
  {
    'id': 3,
    'name': 'Italizza',
    'image': Assets.diningOut,
    'rating': '4.3',
    'place': 'East 46th Street, New York',
    'starttime': '11:30am',
    'endtime': '11pm',
    'type': 'Pizza, Italian'
  },
  {
    'id': 4,
    'name': 'Egg Tomato',
    'image': Assets.drinksNightlife,
    'rating': '3.9',
    'place': 'East 46th Street, New York',
    'starttime': '11:30am',
    'endtime': '11pm',
    'type': 'Pizza, Italian'
  },
];
