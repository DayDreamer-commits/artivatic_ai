import 'package:json_annotation/json_annotation.dart';

part 'row_data.g.dart';

@JsonSerializable()
class RowData {
  @JsonKey(name: 'title')
  final String? title;
  @JsonKey(name: 'description')
  final String? description;
  @JsonKey(name: 'imageHref')
  final String? imageHref;

  RowData({
    this.title,
    this.description,
    this.imageHref,
  });

  factory RowData.fromJson(Map<String, dynamic> json) =>
      _$RowDataFromJson(json);
  Map<String, dynamic> toJson() => _$RowDataToJson(this);
}
