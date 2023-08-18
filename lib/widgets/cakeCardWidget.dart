import 'package:flutter/material.dart';

class CakeCard extends StatelessWidget {
  final String cakeImage;
  final String cakeTitle;
  const CakeCard({super.key, required this.cakeImage, required this.cakeTitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        height: 180,
        width: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16), color: Colors.black),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image(
                image: AssetImage(cakeImage),
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 10,
              bottom: 20,
              child: Text(
                cakeTitle,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
