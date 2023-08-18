import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../widgets/cakeCardWidget.dart';

class Body extends StatelessWidget {
  final List<String> titles = ["Morroco Chap Cake", "Italian Rozari Cake"];

  final List<String> images = ["images/cake2.jpg", "images/cake3.jpg"];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage("images/logo.jpg"),
                  ),
                  Container(
                    child: Row(
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: kPrimaryColor,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Dembel, Bole",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: "BebasNeue-Regular"),
                        )
                      ],
                    ),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundColor: kPrimaryColor,
                    child: Icon(
                      Icons.edit_notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 50.0,
                  width: 300,
                  child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 20.0,
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 6.0),
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 50.0,
                                color: kPrimaryColor.withOpacity(0.23))
                          ]),
                      child: const TextField(
                        textAlign: TextAlign.start,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: InputBorder.none,
                            hintText: "Search Cake",
                            hintStyle: TextStyle(
                              fontFamily: "PTSerif-Regular",
                            )),
                      )),
                ),
                Container(
                  height: 44,
                  width: 44,
                  decoration: BoxDecoration(
                      color: kPrimaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Icon(
                    Icons.clear_all,
                    color: Colors.white,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Recomended",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Icon(Icons.keyboard_control_outlined)
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              height: 180.0,
              child: ListView.separated(
                itemCount: titles.length,
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 0,
                  );
                },
                itemBuilder: (_, i) =>
                    CakeCard(cakeImage: images[i], cakeTitle: titles[i]),
                scrollDirection: Axis.horizontal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
