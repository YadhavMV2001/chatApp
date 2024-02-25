// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:chat/home_screen/cardd/card.dart';
import 'package:chat/home_screen/circle_avatar/circle_avatar.dart';
import 'package:flutter/material.dart';

class Sms extends StatelessWidget {
  const Sms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(children: [
        TextField(
            decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromARGB(255, 244, 244, 244),
          prefixIcon: Icon(Icons.search_outlined),
          label: Text("Search a Doctor"),
          suffixIcon: Icon(Icons.mic_outlined),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
        )),
        Row(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Active Now",
              style: TextStyle(fontSize: 29, color: Colors.black),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
        Container(
          height: 80,
          child: ListView.builder(
            itemBuilder: (context, index) => ActiveNow(
              index: index,
            ),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Text(
              "Messages",
              style: TextStyle(fontSize: 29, color: Colors.black),
            ),
          ],
        ),
        Expanded(
          child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) => MessageCard(
                    index: index,
                  ),
              separatorBuilder: (context, index) => SizedBox(height: 0),
              itemCount: 10),
        )
      ]),
    );
  }
}
