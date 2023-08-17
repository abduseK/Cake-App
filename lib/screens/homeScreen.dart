import 'package:flutter/material.dart';
import 'package:test_onte/screens/settingScreen.dart';
import '../constants/constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        title: const Text("Caké App"),
        elevation: 0,
        actions: [
          PopupMenuButton(
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 1,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Settings'),
                ),
              )
            ],
            onSelected: (value) {
              if (value == 1) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings()));
              }
            },
          )
        ],
      ),
      drawer: const Drawer(),
    );
  }
}
