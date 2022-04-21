import 'package:artivatic_ai/app/modules/home/providers/feed_provider.dart';
import 'package:get/get.dart';

import '../providers/feed.dart';

class HomeController extends GetxController {
  final FeedProvider feedProvider = FeedProvider();
  final Rx<Feed?> feed = null.obs;

  @override
  void onInit() {
    super.onInit();
    initializeAsync();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  initializeAsync() async {
    feed.value = await feedProvider.getFeed();
    refresh();
  }
}
