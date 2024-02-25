// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat/dummy_db/dummy_db.dart';
import 'package:chat/message_page/message_page.dart';
import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MessagePage(
                      index: index,
                    )),
          );
        },
        child: Container(
          height: 100,
          width: 400,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 244, 244, 244)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage:
                      NetworkImage(DummyDb.dummyDb[index]["picture"]),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 26,
                      ),
                      Text(
                        DummyDb.dummyDb[index]["UserName"],
                        style: TextStyle(fontSize: 20),
                      ),
                      Text(DummyDb.dummyDb[index]["Message"])
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 130,
              ),
              Column(
                children: [
                  SizedBox(height: 14),
                  Text(DummyDb.dummyDb[index]["time"]),
                  SizedBox(
                    height: 20,
                  ),
                  Visibility(
                    visible: DummyDb.dummyDb[index]["count"] > 0 ? true : false,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: Colors.blue,
                      child: Text(
                        DummyDb.dummyDb[index]["count"].toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
