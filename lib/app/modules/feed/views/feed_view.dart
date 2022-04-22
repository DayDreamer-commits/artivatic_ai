import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/feed_controller.dart';

class FeedView extends GetView<FeedController> {
  const FeedView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:
            controller.row.title == null ? Colors.red : Colors.blue,
        title: Text(controller.row.title ?? "Title not found"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CachedNetworkImage(
            imageUrl: controller.row.imageHref ?? "",
            errorWidget: (context, url, error) => const Icon(
              Icons.error,
              color: Colors.red,
              size: 48,
            ),
            placeholder: (context, url) => const Icon(
              Icons.image,
              color: Colors.black12,
              size: 48,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              controller.row.description ??
                  "I think we forgot to describe the title.",
              style: const TextStyle(
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
