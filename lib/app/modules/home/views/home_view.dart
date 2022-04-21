import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'error_widget.dart';
import 'feed_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeView'),
        centerTitle: true,
      ),
      body: Obx(() {
        return controller.feed.value == null
            ? const CustomErrorWidget(message: "No Feed is Available")
            : FeedWidget(
                feed: controller.feed.value!,
              );
      }),
    );
  }
}
