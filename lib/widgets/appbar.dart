// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

PreferredSizeWidget AppBarView() {
  const String _title = 'WhatsApp';

  return AppBar(
      // bottom: const TabBar(
      //   tabs: [
      //     Tab(
      //       icon: Icon(Icons.camera),
      //     ),
      //     Tab(
      //       text: 'CHATS',
      //     ),
      //     Tab(
      //       text: 'STATUS',
      //     ),
      //     Tab(
      //       text: 'CALLS',
      //     )
      //   ],
      // ),
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      centerTitle: false,
      leadingWidth: 0,
      title: const Text(
        _title,
        style: TextStyle(fontSize: 15),
      ),
      leading: Row(
        mainAxisSize: MainAxisSize.min,
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
          iconSize: 15,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
          iconSize: 15,
        )
      ]);
}

/*
DefaultTabController(
  length: 3,
  child = Scaffold(
    appBar: AppBar(
      bottom: TabBar(
        tabs: [
          Tab(icon: Icon(Icons.flight)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_car)),
        ],
      ),
      title: Text('Tabs Demo'),
    ),
    body: TabBarView(
      children: [
        Icon(Icons.flight, size: 350),
        Icon(Icons.directions_transit, size: 350),
        Icon(Icons.directions_car, size: 350),
      ],
    ),
  ),
);

// const Center(
//           child: SizedBox(
//         height: 20,
//         width: 20,
//         child: CircularProgressIndicator(
//           strokeWidth: 1,
//         ),*/