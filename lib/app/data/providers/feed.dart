import 'package:json_annotation/json_annotation.dart';

import 'row_data.dart';

part 'feed.g.dart';

@JsonSerializable(explicitToJson: true)
class Feed {
  @JsonKey(name: 'title')
  final String title;
  @JsonKey(name: 'rows')
  final List<RowData> rows;

  Feed({required this.title, required this.rows});

  factory Feed.fromJson(Map<String, dynamic> json) => _$FeedFromJson(json);
  Map<String, dynamic> toJson() => _$FeedToJson(this);
}
