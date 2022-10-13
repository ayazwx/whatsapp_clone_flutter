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
                  Stack(children: <Widget>[
                    Container(
                      margin: const EdgeInsets.only(left: 1),
                      width: 50,
                      height: 50,
                      child: Image.network(
                          'https://www.iconpacks.net/icons/2/free-user-icon-3296-thumb.png'),
                    ),
                    Container(
                        margin: const EdgeInsets.only(left: 30, top: 30),
                        height: 20.0,
                        width: 20.0,
                        child: FittedBox(
                          child: FloatingActionButton(
                            mini: true,
                            onPressed: () {},
                            backgroundColor: Colors.green,
                            child: const Icon(
                              Icons.add,
                              size: 30,
                            ),
                          ),

                          //const FloatingActionButtonLocation(),
                        ))
                  ]),

                  // const Spacer(
                  //   flex: 50,
                  // ),

                  // Container(
                  //   child: const Text('Viewed updates'),
                  // ) // const Divider(),
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
