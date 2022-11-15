import 'package:freezed_annotation/freezed_annotation.dart';
part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
class CollectionListData with _$CollectionListData {
  const factory CollectionListData({
    required String name,
    @Default('NA') String place,
  }) = _CollectionListData;
  factory CollectionListData.fromJson(Map<String, dynamic> json) =>
      _$CollectionListDataFromJson(json);
}

final collectionlist = [
  {'name': 'Legendary food', 'place': '34'},
  {'name': 'Sea food', 'place': '28'},
  {'name': 'Legendary food', 'place': '34'},
  {'name': 'Sea food', 'place': '28'},
  {'name': 'Legendary food', 'place': '34'},
  {'name': 'Sea food', 'place': '28'},
];
