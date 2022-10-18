import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:mywhatsapp/view/home_screen.dart';

late List<CameraDescription> cameras;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String title = 'WhatsApp';

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData.dark().copyWith(
            appBarTheme:
                const AppBarTheme(backgroundColor: Colors.transparent)),
        home: const Homescreen(),
      );
}
