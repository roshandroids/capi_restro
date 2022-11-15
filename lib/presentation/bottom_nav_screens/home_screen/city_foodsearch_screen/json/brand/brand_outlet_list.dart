import 'package:freezed_annotation/freezed_annotation.dart';
part 'brand_outlet_list.freezed.dart';
part 'brand_outlet_list.g.dart';

@freezed
class BrandListData with _$BrandListData {
  const factory BrandListData({
    required String name,
    @Default(0) int outlets,
  }) = _BrandListData;
  factory BrandListData.fromJson(Map<String, dynamic> json) =>
      _$BrandListDataFromJson(json);
}

final brandlist = [
  {'name': 'AMERICAN', 'outlets': 23},
  {'name': 'JAPAN', 'outlets': 16},
  {'name': 'FRANCE', 'outlets': 31},
];
