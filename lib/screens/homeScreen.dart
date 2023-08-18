import 'package:flutter/material.dart';
import 'package:test_onte/constants/constants.dart';
import 'package:test_onte/screens/settingScreen.dart';
import 'bodyScreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List pages = [Body(), Body(), const Settings()];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        currentIndex: currentIndex,
        showUnselectedLabels: false,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        selectedItemColor: Colors.brown,
        showSelectedLabels: false,
        elevation: 0,
        backgroundColor: Colors.white,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bookmarks), label: 'Saved'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.brown,
        onPressed: () {},
        child: const Text(
          "Order",
          style: TextStyle(fontFamily: "PTSerif-Regular"),
        ),
      ),
    );
  }
}
