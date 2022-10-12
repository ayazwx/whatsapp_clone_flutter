import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  // late List<String> Status;

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
                    child: Stack(children: <Widget>[
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.network(
                            'https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png'),
                      ),
                      Column(children: [
                        const Padding(padding: EdgeInsets.all(15)),
                        FloatingActionButton(
                          mini: true,
                          onPressed: () {},
                          backgroundColor: Colors.green,
                          child: const Icon(
                            Icons.add,
                            size: 20,
                          ),
                        ),
                        //const FloatingActionButtonLocation(),
                      ])
                    ]),
                  ),

                  const Spacer(
                    flex: 50,
                  ),

                  // const Divider(),
                ],
              ),
            );
          },
          itemCount: 1,
        ),
        floatingActionButton:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          FloatingActionButton(
            mini: true,
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.create,
              size: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(
              Icons.camera_alt,
              size: 20,
            ),
          ),
        ]));
  }
}
