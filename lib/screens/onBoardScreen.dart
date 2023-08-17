import 'dart:async';
import 'package:flutter/material.dart';
import 'package:test_onte/screens/homeScreen.dart';
import 'package:test_onte/screens/onBoradContentScreen.dart';
import 'package:test_onte/screens/settingScreen.dart';
import '../models/onBaord.dart';
import "./dotMarkers.dart";
import "../constants//constants.dart";

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  Timer? _timer;

  final List<OnBaord> onBoardContent = [
    OnBaord(
        title: "Custom your cake",
        image: "images/ill1.png",
        description:
            "Custom your cake as you like, whenever you want \n from bread to topping, Everything"),
    OnBaord(
        title: "Order from your home",
        image: "images/ill2.png",
        description:
            "Wanna eat some cake while you're on your couch? \n Order your favorite cake from your home"),
    OnBaord(
        title: "Easy to use",
        image: "images/ill3.png",
        description:
            "Simple and easy to use. Manage your \n orders and your account"),
  ];

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_pageIndex < 3) {
        _pageIndex++;
      } else {
        _pageIndex = 0;
      }

      _pageController.animateToPage(_pageIndex,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: PageView.builder(
              onPageChanged: (index) {
                setState(() {
                  _pageIndex = index;
                });
              },
              itemCount: onBoardContent.length,
              controller: _pageController,
              itemBuilder: (context, index) {
                return OnBoardContentScreen(
                    title: onBoardContent[index].title,
                    image: onBoardContent[index].image,
                    description: onBoardContent[index].description);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 100.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _pageIndex < 2
                    ? TextButton(
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "BebasNeue-Regular",
                              fontSize: 17),
                        ),
                        onPressed: () {},
                      )
                    : const Text(""),
                const SizedBox(
                  width: 20,
                ),
                ...List.generate(
                    onBoardContent.length,
                    (index) => Padding(
                          padding: const EdgeInsets.only(right: 4),
                          child: DotMarkers(
                            isActive: index == _pageIndex,
                          ),
                        )),
                const SizedBox(
                  width: 20,
                ),
                _pageIndex >= 2
                    ? TextButton(
                        child: const Text(
                          "Get Started",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontFamily: "BebasNeue-Regular",
                            fontSize: 20,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        },
                      )
                    : TextButton(
                        child: const Text(
                          "Next",
                          style: TextStyle(
                              color: kPrimaryColor,
                              fontFamily: "BebasNeue-Regular",
                              fontSize: 17),
                        ),
                        onPressed: () {},
                      )
              ],
            ),
          ),
        ],
      )),
    );
  }
}
