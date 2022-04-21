import 'package:artivatic_ai/app/modules/home/controllers/home_controller.dart';
import 'package:artivatic_ai/app/modules/home/views/row_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../data/providers/feed.dart';

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
          return RowCard(row: feed.rows[index]);
        },
      ),
    );
  }
}
