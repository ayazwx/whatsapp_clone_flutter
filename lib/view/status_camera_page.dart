import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:mywhatsapp/main.dart';

import 'home_screen.dart';

int camera = 1;

class StatusCameraPage extends StatefulWidget {
  const StatusCameraPage({super.key});

  @override
  State<StatusCameraPage> createState() => _StatusCameraPageState();
}

class _StatusCameraPageState extends State<StatusCameraPage> {
  void changeCamera() {
    setState(() {
      if (camera == 0) {
        camera = 0;
      }
      if (camera == 1) {
        camera = 1;
      } else {
        camera = 0;
      }
    });
  }
  // void initState() {
  //   Timer(Duration(seconds: 2), navigateToCamera());

  //   super.initState();
  // }

  // navigateToCamera() {
  //   return Navigator.push(
  //       context, MaterialPageRoute(builder: (context) => const CameraApp()));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 10,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => changeCamera(),
          backgroundColor: Colors.white.withOpacity(0.5),
          child: const Icon(
            Icons.circle_outlined,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        body: Stack(
          children: [
            Container(
              color: Colors.black,
              child: Center(
                  child: Container(
                height: 520.0,
                width: 400.0,
                color: Colors.grey,
                child: const CameraApp(),
              )),
            ),
            Positioned(
              top: 10.0,
              right: 10.0,
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.white,
                mini: true,
                child: const Icon(
                  Icons.flash_auto,
                  size: 25,
                ),
              ),
            ),
            const Positioned(
                bottom: 20.0,
                left: 30.0,
                child: Card(
                  color: Colors.white,
                )),
            Positioned(
              bottom: 20,
              right: 110.0,
              child: SizedBox(
                width: 50,
                height: 50,
                child: FloatingActionButton(
                  onPressed: () {},
                  backgroundColor: Colors.white,
                  child: const Icon(Icons.switch_camera),
                ),
              ),
            ),
          ],
        ));
  }
}

/// CameraApp is the Main Application.
class CameraApp extends StatefulWidget {
  /// Default Constructor
  const CameraApp({Key? key}) : super(key: key);

  @override
  State<CameraApp> createState() => _CameraAppState();
}

class _CameraAppState extends State<CameraApp> {
  late CameraController controller;
  pop() {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Homescreen(),
        ));
  }

  @override
  void initState() {
    super.initState();
    controller = CameraController(cameras[1], ResolutionPreset.medium);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            print('User denied camera access.');
            break;
          default:
            print('Handle other errors.');
            break;
        }
      }
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!controller.value.isInitialized) {
      return WillPopScope(onWillPop: () async => pop(), child: Container());
    }
    return WillPopScope(
        onWillPop: () async => pop(), child: CameraPreview(controller));
  }
}
