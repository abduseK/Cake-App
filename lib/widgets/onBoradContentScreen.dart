import 'package:flutter/material.dart';
import 'package:test_onte/constants/constants.dart';

class OnBoardContentScreen extends StatefulWidget {
  final String title;
  final String image;
  final String description;

  OnBoardContentScreen(
      {required this.title, required this.image, required this.description});

  @override
  State<OnBoardContentScreen> createState() => _OnBoardContentScreenState();
}

class _OnBoardContentScreenState extends State<OnBoardContentScreen> {
  double opacity = 0.0;

  changeOpacity() {
    Future.delayed(const Duration(milliseconds: 1200), () {
      setState(() {
        opacity = opacity == 0.0 ? 1.0 : 0.0;
        changeOpacity();
      });
    });
  }

  @override
  void initState() {
    super.initState();
    changeOpacity();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(widget.image),
        ),
        Text(
          widget.title,
          style: const TextStyle(
              fontSize: 25.0,
              color: kPrimaryColor,
              fontFamily: "BebasNeue-Regular"),
        ),
        const SizedBox(
          height: 10,
        ),
        AnimatedOpacity(
          opacity: opacity == 1 ? 0 : 1,
          duration: const Duration(milliseconds: 1200),
          child: Text(
            widget.description,
            style: const TextStyle(fontSize: 15.0, color: kPrimaryColor),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
