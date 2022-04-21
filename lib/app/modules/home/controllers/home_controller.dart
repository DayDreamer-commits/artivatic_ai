import 'package:artivatic_ai/app/modules/home/providers/feed_provider.dart';
import 'package:get/get.dart';

import '../providers/feed.dart';

class HomeController extends GetxController {
  final FeedProvider feedProvider = FeedProvider();
  final Rx<Feed?> feed = Rx(null);

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

  getFeedFromApi() async {
    final feedFromApi = await feedProvider.getFeed();

    if (feedFromApi != null) {
      feed.value = feedFromApi;
      refresh();
    }
  }

  refreshFeed() async {
    await getFeedFromApi();
  }
}
