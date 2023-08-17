import 'package:flutter/material.dart';
import 'package:test_onte/constants/constants.dart';

class OnBoardContentScreen extends StatelessWidget {
  final String title;
  final String image;
  final String description;

  OnBoardContentScreen(
      {required this.title, required this.image, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
        ),
        Text(
          title,
          style: const TextStyle(
              fontSize: 25.0,
              color: kPrimaryColor,
              fontFamily: "BebasNeue-Regular"),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: const TextStyle(fontSize: 15.0, color: kPrimaryColor),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
