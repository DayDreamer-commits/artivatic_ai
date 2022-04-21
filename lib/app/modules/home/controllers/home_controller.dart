import 'package:artivatic_ai/app/modules/home/providers/feed_provider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../providers/feed.dart';

class HomeController extends GetxController {
  final FeedProvider feedProvider = FeedProvider();
  final Rx<Feed?> feed = Rx(null);

  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  @override
  void onInit() {
    super.onInit();
    getFeedFromApi();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<Feed?> getFeedFromApi() async {
    final feedFromApi = await feedProvider.getFeed();

    if (feedFromApi != null) {
      feed.value = feedFromApi;
      refresh();
      return feedFromApi;
    }
    return null;
  }

  refreshFeed() async {
    await getFeedFromApi();
    refreshController.refreshCompleted();
    Get.snackbar("Success", "Feed Refreshed",
        snackPosition: SnackPosition.BOTTOM,
        colorText: Colors.green,
        backgroundColor: Colors.green.shade100);
  }
}
