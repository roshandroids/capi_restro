import 'package:freezed_annotation/freezed_annotation.dart';
part 'cuisine_list.freezed.dart';
part 'cuisine_list.g.dart';

@freezed
class CuisineListData with _$CuisineListData {
  const factory CuisineListData({
    required String name,
  }) = _CuisineListData;
  factory CuisineListData.fromJson(Map<String, dynamic> json) =>
      _$CuisineListDataFromJson(json);
}

final cuisinelist = [
  {'name': 'AMERICAN'},
  {'name': 'JAPAN'},
  {'name': 'FRANCE'},
  {'name': 'HEALTH'},
  {'name': 'AMERICAN'},
  {'name': 'JAPAN'},
];
