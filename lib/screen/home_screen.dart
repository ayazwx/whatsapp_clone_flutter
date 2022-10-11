import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

import '../model/chat_model.dart';
import '../pages/camera_page.dart';
import '../pages/chat_page.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  // final List<ChatModel> chatmodels;
  // final ChatModel sourchat;

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen>
    with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
            iconSize: 18,
          ),
          PopupMenuButton<String>(
            iconSize: 18,
            onSelected: (value) {
              print(value);
            },
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  value: "New group",
                  child: Text("New group"),
                ),
                const PopupMenuItem(
                  value: "New broadcast",
                  child: Text("New broadcast"),
                ),
                const PopupMenuItem(
                  value: "Linked devices",
                  child: Text("Linked devices"),
                ),
                const PopupMenuItem(
                  value: "Starred messages",
                  child: Text("Starred messages"),
                ),
                const PopupMenuItem(
                  value: "Settings",
                  child: Text("Settings"),
                ),
              ];
            },
          )
        ],
        bottom: TabBar(
          controller: _controller,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              text: "CHATS",
            ),
            Tab(
              text: "STATUS",
            ),
            Tab(
              text: "CALLS",
            )
          ],
        ),
      ),
      body: TabBarView(
        controller: _controller,
        children: const [
          CameraPage(),
          // ChatPage(
          //     // chatmodels: widget.chatmodels,
          //     // sourchat: widget.sourchat,
          //     ),
          Text("STATUS"),
          Text("Calls"),
        ],
      ),
      floatingActionButton: SizedBox(
          height: 40.0,
          width: 40.0,
          child: FittedBox(
            child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.chat,
                size: 20,
              ),
            ),
          )),
    );
  }
}
