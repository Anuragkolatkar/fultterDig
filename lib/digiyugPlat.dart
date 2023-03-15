import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class DigiyugPlat extends StatefulWidget {
  const DigiyugPlat({super.key});

  @override
  State<DigiyugPlat> createState() => _DigiyugPlatState();
}

class _DigiyugPlatState extends State<DigiyugPlat> {
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
                offset: Offset(0, 0),
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
                        padding: EdgeInsets.only(top: 21),
                        child: Text(
                          "Platinum Plan",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 29,
                      ),
                      Container(
                        width: Get.width * .8,
                        height: Get.height * .14,
                        decoration: BoxDecoration(
                            color: Color(0xffD9D9D9).withOpacity(0.4)),
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Platinum",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 64, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 48,
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        ListTile(
                          //leading: MyBullet(),
                          title: Text(
                            '\u2022 No limit on poster making',
                            style: TextStyle(
                                color: Color(0xff858585),
                                fontWeight: FontWeight.w600,
                                fontSize: 17),
                          ),
                        ),
                        ListTile(
                          //  leading: MyBullet(),
                          title: Text('\u2022 Without Watermark',
                              style: TextStyle(
                                  color: Color(0xff858585),
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17)),
                        ),
                        ListTile(
                          //  leading: MyBullet(),
                          title: Text('\u2022 Without ads',
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
                        Text(
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
                      child: Text(
                        'Selected',
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffA21B31),
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
