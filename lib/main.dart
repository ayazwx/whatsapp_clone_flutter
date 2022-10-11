import 'package:flutter/material.dart';
import 'package:mywhatsapp/pages/showed_page.dart';
import 'package:mywhatsapp/screen/home_screen.dart';

void main() {
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
            appBarTheme: AppBarTheme(backgroundColor: Colors.transparent)),
        home: const Homescreen(),
      );
}
