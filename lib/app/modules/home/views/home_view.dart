import 'package:artivatic_ai/app/modules/home/views/custom_loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'custom_app_drawer.dart';
import 'error_widget.dart';
import 'feed_widget.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => controller.isLoading.value
            ? const CustomLoadingWidget()
            : Scaffold(
                appBar: AppBar(
                  title: Text(controller.feed.value?.title ?? "Home"),
                  centerTitle: true,
                ),
                drawer: const CustomAppDrawer(),
                body: Obx(
                  () {
                    return controller.feed.value == null
                        ? const CustomErrorWidget(
                            message: "No Feed is Available")
                        : FeedWidget(
                            feed: controller.feed.value!,
                          );
                  },
                ),
              ),
      ),
    );
  }
}
