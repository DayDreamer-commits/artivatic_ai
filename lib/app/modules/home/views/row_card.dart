import 'package:artivatic_ai/app/data/providers/row_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class RowCard extends StatelessWidget {
  final RowData row;
  const RowCard({Key? key, required this.row}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blue.shade50,
      child: ListTile(
        onTap: () => Get.toNamed(Routes.FEED, arguments: row),
        leading: SizedBox(
          height: 64,
          width: 64,
          child: CachedNetworkImage(
            imageUrl: row.imageHref ?? "",
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
        ),
        title: Text(row.title ?? "Title not found"),
        subtitle: Text(row.description ?? "Description not found"),
      ),
    );
  }
}
