import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppDrawer extends StatelessWidget {
  const CustomAppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      child: ListView(
        children: const [
          SizedBox(
            height: 8,
          ),
          SizedBox(
            height: 80,
            child: Card(
              color: Colors.blue,
              child: Center(
                child: Text(
                  "Credits",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("get"),
              subtitle: Text("https://pub.dev/packages/get"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("json_annotation"),
              subtitle: Text("https://pub.dev/packages/json_annotatio"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("pull_to_refresh"),
              subtitle: Text("https://pub.dev/packages/pull_to_refresh"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("cached_network_image"),
              subtitle: Text("https://pub.dev/packages/cached_network_image"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("get_cli"),
              subtitle: Text("https://pub.dev/packages/get_cli"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("build_runner"),
              subtitle: Text("https://pub.dev/packages/build_runner"),
            ),
          ),
          Card(
            child: ListTile(
              title: Text("json_serializable"),
              subtitle: Text("https://pub.dev/packages/json_serializable"),
            ),
          ),
        ],
      ),
    );
  }
}
