// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import

import 'package:chat/dummy_db/dummy_db.dart';
import 'package:flutter/material.dart';

class ActiveNow extends StatelessWidget {
  const ActiveNow({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(DummyDb.dummyDb[index]["picture"]),
          ),
          CircleAvatar(
            radius: 8,
            backgroundColor: Colors.green,
          )
        ],
      ),
    );
  }
}
