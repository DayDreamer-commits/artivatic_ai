import 'package:flutter/material.dart';

import '../providers/feed.dart';

class FeedWidget extends StatelessWidget {
  final Feed feed;
  const FeedWidget({Key? key, required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: feed.rows.length,
      itemBuilder: (context, index) {
        final row = feed.rows[index];
        return ListTile(
          title: Text(row.title ?? "Title not found"),
          subtitle: Text(row.description ?? "Description not found"),
        );
      },
    );
  }
}
