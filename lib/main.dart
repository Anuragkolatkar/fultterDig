import 'package:digiyug_app/digiyug.dart';
import 'package:digiyug_app/digiyugGold.dart';
import 'package:digiyug_app/digiyugNotifiCustom.dart';
import 'package:digiyug_app/digiyugPlan.dart';
import 'package:digiyug_app/digiyugPlat.dart';
import 'package:digiyug_app/digiyugFaq.dart';
import 'package:digiyug_app/digiyugProfile.dart';
import 'package:digiyug_app/expanded.dart';
import 'package:digiyug_app/digiyugPlans.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          //primarySwatch: Colors.blue,
          ),
      // home: Digiyug(),
      debugShowCheckedModeBanner: false,
      routes: {
        //"/": (context) => DigiyugProfile(),
        //"/": (context) => DigiyugFaq(),
        //  "/": (context) => Cardd(),
        //"/": (context) => Expanded_page(),
        //"/": (context) => DigiyugPlan(),
        // "/": (context) => DigiyugGold(),
        //"/": (context) => DigiyugPlat(),
        "/": (context) => Sliderr(), //Digiyug plan
      },
    );
  }
}
