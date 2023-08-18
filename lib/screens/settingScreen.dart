import 'package:flutter/material.dart';
import 'package:test_onte/constants/constants.dart';

import '../widgets/settingCardWidget.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Settings',
                        style: TextStyle(
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            fontFamily: 'BebasNeue-Regular'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/logo.jpg"),
                        backgroundColor: kPrimaryColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      RichText(
                        text: const TextSpan(
                            text: "Versavvy ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                  text: "Caké",
                                  style: TextStyle(
                                      color: kPrimaryColor,
                                      fontFamily: "BebasNeue-Regular",
                                      fontSize: 16))
                            ]),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Payment Settings',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.2),
                  thickness: 0.6,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              SettingCardWidget(
                settingTitle: "Payment Options",
                icon: const Icon(Icons.wallet),
              ),
              const SizedBox(
                height: 0.0,
              ),
              SettingCardWidget(
                settingTitle: "Payment History",
                icon: const Icon(Icons.bar_chart_rounded),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'Contact Details',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.2),
                  thickness: 0.6,
                ),
              ),
              SettingCardWidget(
                settingTitle: "Email Address",
                icon: const Icon(Icons.email),
              ),
              SettingCardWidget(
                settingTitle: "Phone Number",
                icon: const Icon(Icons.phone),
              ),
              SettingCardWidget(
                settingTitle: "Residential Address",
                icon: const Icon(Icons.location_city),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  'App Settings',
                  style: TextStyle(color: Colors.blueGrey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: Divider(
                  color: Colors.black.withOpacity(0.2),
                  thickness: 0.6,
                ),
              ),
              SettingCardWidget(
                settingTitle: "Notification",
                icon: const Icon(Icons.notifications),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
