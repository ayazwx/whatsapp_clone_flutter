import 'package:flutter/material.dart';

class CallsPage extends StatefulWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  State<CallsPage> createState() => _CallsPageState();
}

class _CallsPageState extends State<CallsPage> {
  // late List<String> Calls;

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
                        'https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png'),
                  ),
                  const Spacer(
                    flex: 30,
                  ),
                  const Expanded(flex: 20, child: Icon(Icons.call)),
                  const Expanded(flex: 10, child: Icon(Icons.videocam)),
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
                onPressed: () {},
                backgroundColor: Colors.green,
                child: const Icon(
                  Icons.call,
                  size: 20,
                ),
              ),
            )));
  }
}
