import 'package:get/get.dart';

import 'feed.dart';

class FeedProvider extends GetConnect {
  @override
  void onInit() {}

  Future<Feed?> getFeed() async {
    final response = await httpClient
        .get("https://run.mocky.io/v3/c4ab4c1c-9a55-4174-9ed2-cbbe0738eedf");

    if (response.isOk) {
      return Feed.fromJson(response.body as Map<String, dynamic>);
    } else {
      Get.snackbar("Error", response.status.code.toString());
      return null;
    }
  }
}
