import 'package:flutter/material.dart';

class SelectContactCallPage extends StatefulWidget {
  const SelectContactCallPage({Key? key}) : super(key: key);

  @override
  State<SelectContactCallPage> createState() => _SelectContactCallPageState();
}

class _SelectContactCallPageState extends State<SelectContactCallPage> {
  // late List<String> SelectContactCallhistory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select contact"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => {},
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
                  value: "Invite a friend",
                  child: Text("Invite a friend"),
                ),
                const PopupMenuItem(
                  value: "Contacts",
                  child: Text("Contacts"),
                ),
                const PopupMenuItem(
                  value: "Refresh",
                  child: Text("Refresh"),
                ),
                const PopupMenuItem(
                  value: "Help",
                  child: Text("Help"),
                ),
              ];
            },
          )
        ],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: const [
                    CircleAvatar(
                      radius: 28,
                      backgroundImage: NetworkImage(
                          'https://avatars.githubusercontent.com/u/92828194?v=4'),
                    ),
                    Spacer(
                      flex: 3,
                    ),
                    Expanded(flex: 40, child: Text('Ayaz')),

                    Expanded(flex: 20, child: Icon(Icons.call)),
                    Expanded(flex: 10, child: Icon(Icons.videocam)),
                    // const Divider(),
                  ],
                ),
              ));
        },
        itemCount: 15,
      ),
    );
  }
}
