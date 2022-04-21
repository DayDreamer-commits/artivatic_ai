import 'package:artivatic_ai/app/modules/home/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../providers/feed.dart';

class FeedWidget extends StatelessWidget {
  final Feed feed;
  const FeedWidget({Key? key, required this.feed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return SmartRefresher(
      controller: controller.refreshController,
      onRefresh: controller.refreshFeed,
      child: ListView.builder(
        itemCount: feed.rows.length,
        itemBuilder: (context, index) {
          final row = feed.rows[index];
          return ListTile(
            title: Text(row.title ?? "Title not found"),
            subtitle: Text(row.description ?? "Description not found"),
          );
        },
      ),
    );
  }
}
