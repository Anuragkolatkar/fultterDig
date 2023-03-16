import 'package:flutter/material.dart';
import 'package:digiyug_app/widget/Free.dart';

class Slide {
  String text1;
  String title;
  String text3;
  String desc2;
  String desc3;
  int price;
  String text2;
  final Color? color;

  Slide(
      {required this.text1,
      required this.title,
      required this.text3,
      required this.desc2,
      required this.desc3,
      required this.price,
      required this.text2,
      required this.color});
}

final slideList = [
  Slide(
      text1: "Sliver Plane",
      title: "Free",
      text3: "Selected",
      desc2: "You can make 1 poster",
      desc3: "With Watermark",
      price: 0,
      text2: "With ads",
      color: Color(0xffD9D9D9).withOpacity(0.4)),
  Slide(
      text1: "Platinum Plane",
      title: "Platinum",
      text3: "Selected",
      desc2: "You can make 5 poster",
      desc3: "With Watermark",
      price: 0,
      text2: "With ads",
      color: Color(0xffD9D9D9).withOpacity(0.4)),
  Slide(
      text1: "Gold Plane",
      title: "Gold",
      text3: "Selected",
      desc2: "You can make unlimited poster",
      desc3: "No Watermark",
      price: 0,
      text2: "Without ads",
      color: Color(0xffF2C94C)),
];
