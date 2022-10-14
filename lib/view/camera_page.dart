import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.circle_outlined,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            verticalDirection: VerticalDirection.up,
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(right: 10, top: 5),
                  height: 20.0,
                  width: 20.0,
                  child: FittedBox(
                    child: FloatingActionButton(
                      mini: true,
                      onPressed: () {},
                      backgroundColor: Colors.white,
                      child: const Icon(
                        Icons.flash_on,
                        size: 30,
                      ),
                    ),

                    //const FloatingActionButtonLocation(),
                  )),
            ]));
  }
}
