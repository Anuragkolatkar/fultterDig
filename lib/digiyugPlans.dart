import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'modal/slide.dart';
import 'modal/slide_dots.dart';

class Sliderr extends StatefulWidget {
  const Sliderr({super.key});

  @override
  State<Sliderr> createState() => _SliderrState();
}

class _SliderrState extends State<Sliderr> {
  int _currentPage = 0;
  late PageController _pageController;
  var controller = PageController(
    viewportFraction: 0.8,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Timer.periodic(Duration(seconds: 5), (Timer timer) {
    //   if (_currentPage < 2) {
    //     _currentPage++;
    //   } else {
    //     _currentPage = 0;
    //   }
    //   _pageController.animateToPage(_currentPage,
    //       duration: Duration(microseconds: 300), curve: Curves.easeIn);
    //  });
    _pageController =
        PageController(initialPage: _currentPage, viewportFraction: 1);
    controller = new PageController(
      viewportFraction: 0.8,
    );
  }

  // _OnPageChanged(int index) {
  //   setState(() {
  //     _currentPage = index;
  //   });
  // }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 70, left: 10),
              child: Row(
                children: [
                  InkWell(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: Text(
                          "Anurag",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: Text(
                          "Anurag",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: Text(
                          "Anurag",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  InkWell(
                    child: Card(
                      color: Colors.white,
                      child: SizedBox(
                        height: 40,
                        width: 90,
                        child: Text(
                          "Anurag",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: AspectRatio(
              aspectRatio: 0.60,
              child: PageView.builder(
                  itemCount: slideList.length,
                  controller: _pageController,
                  physics: const ClampingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return carouseView(index);
                  }),
            ),
          ),
        ],
      ),
    );
  }

  Widget carouseView(int index) {
    return carouseCard(slideList[index]);
  }

  Widget carouseCard(Slide data) {
    return Scaffold(
      body: Stack(
        //alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
              child: SizedBox(
                height: Get.height * .9,
                width: Get.width * 1,
                child: Container(
                  // ignore: prefer_const_literals_to_create_immutables
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.2),
                      offset: Offset(0, 0),
                      blurRadius: 66,
                      spreadRadius: 20,
                    ),
                  ]),
                  child: Card(
                    elevation: 5,
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
                                data.text1,
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
                              decoration: BoxDecoration(color: data.color),
                              padding: EdgeInsets.only(top: 15),
                              child: Text(
                                //slideList[index].title,
                                data.title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 60, fontWeight: FontWeight.w600),
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
                            children: [
                              ListTile(
                                //leading: MyBullet(),
                                title: Text(
                                  "\u2022 ${data.desc2}",
                                  style: TextStyle(
                                      color: Color(0xff858585),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 17),
                                ),
                              ),
                              ListTile(
                                //  leading: MyBullet(),
                                title: Text('\u2022 ${data.desc3}',
                                    style: TextStyle(
                                        color: Color(0xff858585),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17)),
                              ),
                              ListTile(
                                //  leading: MyBullet(),
                                title: Text('\u2022 ${data.text2}',
                                    style: TextStyle(
                                        color: Color(0xff858585),
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Get.height * .03,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                // slideList[index].price.toString(),
                                data.price.toString(),
                                style: TextStyle(
                                    fontSize: 64, fontWeight: FontWeight.w600),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: SizedBox(
                            width: Get.width * .8,
                            height: 57,
                            child: ElevatedButton(
                              child: Text(
                                // slideList[index].text2,
                                data.text3,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Stack(
          //   children: [
          //     Container(
          //       margin: EdgeInsets.only(bottom: 35),
          //       child: Row(children: [
          //         for (int i = 0; i <= slideList.length; i++)
          //           if (i == _currentPage) SlideDots(true) else SlideDots(false)
          //       ]),
          //     )
          //   ],
          // )
        ],
      ),
    );
  }
}
