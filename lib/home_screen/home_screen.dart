// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:chat/home_screen/screens/circlee.dart';
import 'package:chat/home_screen/screens/homee.dart';
import 'package:chat/home_screen/screens/profilee.dart';
import 'package:chat/home_screen/screens/sms.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int indexVal = 0;
  List pages = [Homee(), Circlee(), Sms(), Profilee()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        centerTitle: true,
        title: Text(
          "Message",
          style: TextStyle(fontSize: 30, color: Colors.blue),
        ),
      ),
      body: pages[indexVal],
      bottomNavigationBar: NavigationBar(
          onDestinationSelected: (value) {
            setState(() {
              indexVal = value;
            });
          },
          indicatorShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          backgroundColor: Colors.white,
          height: 70,
          elevation: 0,
          selectedIndex: indexVal,
          indicatorColor: Colors.blue[600],
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.access_time),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.messenger_outline_sharp),
              label: "",
            ),
            NavigationDestination(
              icon: Icon(Icons.account_circle_outlined),
              label: "",
            ),
          ]),
    );
  }
}
