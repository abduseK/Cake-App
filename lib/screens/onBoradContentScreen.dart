import 'package:flutter/material.dart';

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
              color: Color.fromARGB(222, 4, 102, 178),
              fontFamily: "BebasNeue-Regular"),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          description,
          style: const TextStyle(
              fontSize: 15.0, color: Color.fromARGB(255, 119, 115, 115)),
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
