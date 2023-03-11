import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class AppButton extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final nameimage;
  final String text1;
  final String text2;
  var today = DateTime.now();
  final String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
  final VoidCallback onTap;
  AppButton({
    super.key,
    required this.nameimage,
    required this.onTap,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Container(
        padding: EdgeInsets.only(left: 17, right: 14, top: 10),
        height: 100,
        child: Card(
          color: Color(0xffFFF0F0),
          child: Container(
              child: ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundColor: Color(0xffA21B31),
                child: SvgPicture.asset(
                  "assets/" + nameimage,
                  width: 25,
                  height: 25,
                  color: Colors.white,
                )),
            title: Text(
              text1,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            subtitle: Text(
              text2,
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  color: Color(0xffA5A5A5)),
            ),
            onTap: () {},
            trailing: Padding(
              padding: const EdgeInsets.only(bottom: 40, right: 22),
              child: Text(
                currentDate,
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff8F8F8F)),
              ),
            ),
          )),
        ),
      )
    ]));
  }
}
