import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'feed_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx(() => controller.feed.value == null
            ? const Text("")
            : Text(controller.feed.value!.title)),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.feed.value == null
            ? ErrorWidget("No Feed is Available")
            : FeedWidget(feed: controller.feed.value!);
      }),
    );
  }
}
