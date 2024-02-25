// ignore_for_file: prefer_const_constructors

import 'package:chat/dummy_db/dummy_db.dart';
import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key, required this.index});
  final int index;

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  int indexval = 0;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(DummyDb.dummyDb[widget.index]["UserName"],
            style: TextStyle(
                color: Colors.blue[700], fontWeight: FontWeight.w700)),
        actions: [
          Container(
            width: 25,
            height: 25,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100]),
            child: Icon(
              Icons.call_outlined,
              color: Colors.black,
              size: 17,
            ),
          ),
          SizedBox(width: 18),
          Container(
            width: 25,
            height: 25,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: Colors.grey[100]),
            child: Icon(
              Icons.videocam_outlined,
              color: Colors.black,
              size: 17,
            ),
          ),
          SizedBox(width: 35),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                reverse: true,
                itemCount: DummyDb.dummyDb.length,
                itemBuilder: (context, index) => Column(
                  crossAxisAlignment: index % 2 == 0
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.all(11),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: index % 2 == 0
                              ? Colors.grey[100]
                              : Colors.blue[600]),
                      child: Text(
                        DummyDb.dummyDb[index]["Message"],
                        style: TextStyle(
                          color: index % 2 == 0 ? Colors.black : Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    width: screenWidth * 0.75,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.grey[100],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 13),
                      child: TextFormField(
                        showCursor: false,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.emoji_emotions_outlined,
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.grey,
                            ),
                            hintText: "Write here",
                            hintStyle: TextStyle(height: 3.5)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Expanded(
                  child: FloatingActionButton(
                    backgroundColor: Colors.blue[600],
                    onPressed: () {},
                    child: Icon(Icons.send),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
