import 'package:flutter/material.dart';
import 'package:mywhatsapp/view/home_screen.dart';
import 'package:mywhatsapp/view/status_camera_page.dart';

import '../widgets/status_create.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  pop() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Homescreen(),
        ));
  }
  // late List<String> Status;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => pop(),
      child: Scaffold(
          body: ListView.builder(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 70,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
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
                    const Spacer(
                      flex: 10,
                    ),
                    Row(children: const [Text('Viewed updates')]),
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
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const CreatePage();
                }));
              },
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
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const StatusCameraPage();
                }));
              },
              backgroundColor: Colors.green,
              child: const Icon(
                Icons.camera_alt,
                size: 20,
              ),
            ),
          ])),
    );
  }
}
