import 'package:artivatic_ai/app/modules/home/controllers/home_controller.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
            leading: row.imageHref != null
                ? SizedBox(
                    height: 64,
                    width: 64,
                    child: CachedNetworkImage(
                      imageUrl: row.imageHref!,
                      errorWidget: (context, url, error) => const Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 48,
                      ),
                      placeholder: (context, url) => Icon(
                        Icons.error,
                        color: Colors.red.shade100,
                        size: 48,
                      ),
                    ),
                  )
                : const SizedBox(
                    height: 64,
                    width: 64,
                    child: Icon(
                      Icons.error,
                      color: Colors.red,
                      size: 48,
                    ),
                  ),
            title: Text(row.title ?? "Title not found"),
            subtitle: Text(row.description ?? "Description not found"),
          );
        },
      ),
    );
  }
}
