// ignore: file_names
import 'package:flutter/material.dart';

class DotMarkers extends StatelessWidget {
  final bool isActive;
  DotMarkers({this.isActive = false});
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 6,
      width: 6,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          color:
              isActive ? const Color.fromARGB(222, 4, 102, 178) : Colors.grey,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
