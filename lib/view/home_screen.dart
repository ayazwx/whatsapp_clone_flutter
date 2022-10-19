import 'package:flutter/material.dart';
import 'package:mywhatsapp/view/calls_page.dart';
import 'package:mywhatsapp/view/chats_page.dart';
import 'package:mywhatsapp/view/status_page.dart';
import 'package:mywhatsapp/widgets/setting_page.dart';

import 'camera_page.dart';

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
        automaticallyImplyLeading: false,
        title: const Text("WhatsApp"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
            iconSize: 18,
          ),
          PopupMenuButton<String>(
            iconSize: 18,
            onSelected: (value) {
              if (value == '4') {
                Navigator.push(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const SettingPage(),
                  ),
                );
              }
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
                  value: '4',
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
          ChatsPage(),
          //     // chatmodels: widget.chatmodels,
          //     // sourchat: widget.sourchat,
          //     ),
          // Text('Chats'),
          StatusPage(),
          CallsPage()
        ],
      ),
    );
  }
}
