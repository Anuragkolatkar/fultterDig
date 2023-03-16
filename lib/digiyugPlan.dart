import 'package:carousel_slider/carousel_slider.dart';
import 'package:digiyug_app/modal/slide.dart';
import 'package:digiyug_app/widget/Free.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//ignore_for_file: prefer_const_constructors

// ignore_for_file: prefer_const_constructors
class DigiyugPlan extends StatefulWidget {
  const DigiyugPlan({super.key});

  @override
  State<DigiyugPlan> createState() => _DigiyugPlanState();
}

class _DigiyugPlanState extends State<DigiyugPlan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 700,
            child: CarouselSlider(
                items: [
                  Padding(
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
                                      // slideList[index].text1,
                                      "Silver",
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 29,
                                  ),
                                  Container(
                                    width: Get.width * .8,
                                    height: Get.height * .14,
                                    decoration: BoxDecoration(
                                        color:
                                            Color(0xffD9D9D9).withOpacity(0.4)),
                                    padding: EdgeInsets.only(top: 15),
                                    child: Text(
                                      //slideList[index].title,
                                      "Free",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 64,
                                          fontWeight: FontWeight.w600),
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
                                      "0/",
                                      style: TextStyle(
                                          fontSize: 64,
                                          fontWeight: FontWeight.w600),
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

                                    "Selected",
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
                        // child: ListView(
                        //   children: [
                        //     FreePlan(
                        //         text1: "Silver",
                        //         title: "Free",
                        //         text3: "Selected",
                        //         desc2: "ff",
                        //         desc3: "fff",
                        //         price: 0,
                        //         text2: "Selected",
                        //         color: Color(0xffD9D9D9).withOpacity(0.4)),
                        //   ],
                        // ),
                      ),
                    ),
                  ),
                ],
                options: CarouselOptions(
                  height: Get.height * 0.9,
                  autoPlay: false,
                  // enlargeCenterPage: true,
                  aspectRatio: 50 / 8,

                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  //autoPlayAnimationDuration: Duration(milliseconds: 800),
                  //viewportFraction: 0.8,
                  //scrollDirection: Axis.horizontal,
                )),
          )
        ],
      ),
    );
  }
}

MyBullet() {
  return new Container(
    height: 20.0,
    width: 20.0,
    decoration: new BoxDecoration(
      color: Colors.black,
      shape: BoxShape.circle,
    ),
  );
}
