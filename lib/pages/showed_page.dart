import 'package:flutter/material.dart';
import 'package:mywhatsapp/widgets/appbar.dart';

class ShowedPage extends StatefulWidget {
  const ShowedPage({super.key});

  @override
  State<ShowedPage> createState() => _ShowedPageState();
}

class _ShowedPageState extends State<ShowedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarView(),
        floatingActionButton: SizedBox(
            height: 40.0,
            width: 40.0,
            child: FittedBox(
              child: FloatingActionButton(
                onPressed: () {},
                backgroundColor: Colors.green,
                child: const Icon(
                  Icons.chat,
                  size: 20,
                ),
              ),
            )));
  }
}
