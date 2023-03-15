import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DigiyugGold extends StatefulWidget {
  const DigiyugGold({super.key});

  @override
  State<DigiyugGold> createState() => _DigiyugGoldState();
}

class _DigiyugGoldState extends State<DigiyugGold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 100, left: 22),
        child: SizedBox(
          height: Get.height * .8,
          width: Get.width * .9,
          child: Container(
            // ignore: prefer_const_literals_to_create_immutables
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                offset: const Offset(0, 0),
                blurRadius: 25,
                spreadRadius: 30,
              ),
            ]),
            child: Card(
              elevation: 20,
              color: Colors.white,
              child: Column(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 21),
                        child: const Text(
                          "Gold Plan",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        height: 29,
                      ),
                      Container(
                        width: Get.width * .8,
                        height: Get.height * .14,
                        decoration: BoxDecoration(
                            color: const Color(0xffF2C94C),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.2),
                                offset: const Offset(0, 0),
                                blurRadius: 25,
                                spreadRadius: 30,
                              )
                            ]),
                        padding: const EdgeInsets.only(top: 15),
                        child: const Text(
                          "Gold",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 64,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 48,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ListTile(
                          //leading: MyBullet(),
                          title: Text(
                            '\u2022 You can make 5 post per day',
                            style: TextStyle(
                                color: Color(0xff858585),
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                        ),
                        ListTile(
                          //  leading: MyBullet(),
                          title: Text('\u2022 With Watermark',
                              style: TextStyle(
                                  color: Color(0xff858585),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17)),
                        ),
                        ListTile(
                          //  leading: MyBullet(),
                          title: Text('\u2022 With ads',
                              style: TextStyle(
                                  color: Color(0xff858585),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .04,
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "0/-",
                          style: TextStyle(
                              fontSize: 64, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Get.height * .06,
                  ),
                  Container(
                      child: SizedBox(
                    width: Get.width * .8,
                    height: 57,
                    child: ElevatedButton(
                      child: const Text(
                        'Selected',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xffA21B31),
                      ),
                      onPressed: () {},
                    ),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
