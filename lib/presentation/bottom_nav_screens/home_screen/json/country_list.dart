import 'package:capi_restro/core/core.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'country_list.freezed.dart';
part 'country_list.g.dart';

@freezed
class CountryListData with _$CountryListData {
  const factory CountryListData({
    required int id,
    required String name,
    @Default('http/roshan.com') String image,
  }) = _CountryListData;
  factory CountryListData.fromJson(Map<String, dynamic> json) =>
      _$CountryListDataFromJson(json);
}

final countryList = [
  {
    'id': 1,
    'name': 'United States',
    'image': Assets.unitedStates,
  },
  {
    'id': 2,
    'name': 'Australia',
    'image': Assets.australia,
  },
  {
    'id': 3,
    'name': 'France',
    'image': Assets.france,
  },
  {
    'id': 4,
    'name': 'Korea',
    'image': Assets.korea,
  },
  {
    'id': 5,
    'name': 'Brazil',
    'image': Assets.brazil,
  },
  {
    'id': 6,
    'name': 'Canada',
    'image': Assets.canada,
  },
  {
    'id': 7,
    'name': 'Japan',
    'image': Assets.japan,
  },
];
