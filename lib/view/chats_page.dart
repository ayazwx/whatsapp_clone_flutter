import 'package:flutter/material.dart';
import 'package:mywhatsapp/view/select_contact.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  // late List<String> Chatshistory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    flex: 30,
                  ),
                  const Expanded(flex: 40, child: Text('Hello')),
                  // const Divider(),
                ],
              ),
            );
          },
          itemCount: 15,
        ),
        floatingActionButton: SizedBox(
            height: 50.0,
            width: 50.0,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (builder) => const SelectContactPage()));
                },
                backgroundColor: Colors.green,
                child: const Icon(
                  Icons.chat,
                  size: 20,
                ),
              ),
            )));
  }
}
