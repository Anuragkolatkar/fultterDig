import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:digiyug_app/modal/slide.dart';

class FreePlan extends StatelessWidget {
  // final int index;

  String text1;
  String title;
  String text3;
  String desc2;
  String desc3;
  int price;
  String text2;
  final Color? color;
  FreePlan(
      {required this.text1,
      required this.title,
      required this.text3,
      required this.desc2,
      required this.desc3,
      required this.price,
      required this.text2,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      color: Colors.white,
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.only(top: 21),
                child: Text(
                  // slideList[index].text1,
                  text1,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 29,
              ),
              Container(
                width: Get.width * .8,
                height: Get.height * .14,
                decoration: BoxDecoration(color: color),
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  //slideList[index].title,
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 64, fontWeight: FontWeight.w600),
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
                    '\u2022 You can make 1 poy',
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
                Text(
                  // slideList[index].price.toString(),
                  price.toString(),
                  style: TextStyle(fontSize: 64, fontWeight: FontWeight.w600),
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
                // slideList[index].text2,

                text3,
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
    );
  }
}
