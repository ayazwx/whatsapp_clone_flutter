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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: const [
                      CircleAvatar(
                        radius: 28,
                        backgroundImage: NetworkImage(
                            'https://thetourguy.com/wp-content/uploads/2020/03/Where-to-Stay-NYC-Hotel-Eiffel-Tower-1440-x-675-900x420.jpeg'),
                      ),

                      Spacer(
                        flex: 30,
                      ),
                      Expanded(flex: 40, child: Text('Hello')),
                      // const Divider(),
                    ],
                  ),
                ));
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
