import 'package:flutter/material.dart';

class SettingCardWidget extends StatelessWidget {
  final String settingTitle;
  final Icon icon;

  SettingCardWidget({required this.settingTitle, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0.5,
      child: ListTile(
        leading: icon,
        iconColor: Colors.black,
        title: Text(
          settingTitle,
          style: const TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
