import 'package:flutter/material.dart';

class SelectContactPage extends StatefulWidget {
  const SelectContactPage({Key? key}) : super(key: key);

  @override
  State<SelectContactPage> createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  // late List<String> SelectContacthistory;

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
            child: Row(
              children: [
                Expanded(
                  flex: 10,
                  child: Image.network(
                      'https://avatars.githubusercontent.com/u/92828194?v=4'),
                ),
                const Spacer(
                  flex: 3,
                ),
                const Expanded(flex: 40, child: Text('Ayaz')),
                // const Divider(),
              ],
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
