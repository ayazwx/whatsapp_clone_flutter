import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  late List<String> Chatshistory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return SizedBox(
            height: 70,
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 12,
                      child: Container(
                          margin: const EdgeInsets.all(10.0),
                          decoration: const BoxDecoration(
                              color: Colors.orange, shape: BoxShape.circle),
                          child: Image.network('https://picsum.photos/50/50')),
                    ),
                    const Spacer(
                      flex: 30,
                    ),
                    const Expanded(flex: 40, child: Text('Hello')),
                  ],
                ),
                const Divider(),
              ],
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
