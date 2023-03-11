import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:flutter_svg/svg.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

class Digiyug extends StatefulWidget {
  const Digiyug({super.key});

  @override
  State<Digiyug> createState() => _DigiyugState();
}

class _DigiyugState extends State<Digiyug> {
  List imagelist = [
    Image.asset("assets/undraw_Login_re_4vu2.png"),
    Image.asset("assets/undraw_Login_re_4vu2.png"),
    Image.asset("assets/undraw_Login_re_4vu2.png"),
    Image.asset("assets/undraw_Login_re_4vu2.png"),
  ];
  @override
  Widget build(BuildContext context) {
    var ImgCount = imagelist.length;
    return Scaffold(
      body:
          // ListView(
          //   children: [
          //     CarouselSlider(
          //       items: [
          //         //1st Image of Slider
          //         Container(
          //           width: 700,
          //           margin: EdgeInsets.all(6.0),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8.0),
          //             image: DecorationImage(
          //               image: AssetImage("assets/undraw_Login_re_4vu2.png"),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),

          //         //2nd Image of Slider
          //         Container(
          //           margin: EdgeInsets.all(6.0),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8.0),
          //             image: DecorationImage(
          //               image: AssetImage("assets/undraw3.png"),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),

          //         Container(
          //           width: 600,
          //           margin: EdgeInsets.all(6.0),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8.0),
          //             image: DecorationImage(
          //               image: AssetImage("assets/undraw2.png"),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),

          //         Container(
          //           width: 500,
          //           margin: EdgeInsets.all(6.0),
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8.0),
          //             image: DecorationImage(
          //               image: AssetImage("assets/l1.jpg"),
          //               fit: BoxFit.cover,
          //             ),
          //           ),
          //         ),
          //       ],

          //       //Slider Container properties
          //       options: CarouselOptions(
          //         height: 200.0,
          //         enlargeCenterPage: true,
          //         autoPlay: true,
          //         aspectRatio: 16 / 9,
          //         autoPlayCurve: Curves.fastOutSlowIn,
          //         enableInfiniteScroll: true,
          //         autoPlayAnimationDuration: Duration(milliseconds: 800),
          //         viewportFraction: 0.8,
          //       ),
          //     ),
          //     SizedBox(
          //       height: 50,
          //     ),
          //     Container(
          //       child: ImageSlideshow(
          //         width: double.infinity,
          //         height: 300,
          //         initialPage: 0,
          //         indicatorColor: Colors.blue,
          //         indicatorBackgroundColor: Colors.grey,
          //         children: [
          //           Image.asset(
          //             "assets/l1.jpg",
          //             fit: BoxFit.cover,
          //           ),
          //           Image.asset(
          //             "assets/l1.jpg",
          //             fit: BoxFit.cover,
          //           ),
          //           Image.asset(
          //             "assets/l1.jpg",
          //             fit: BoxFit.cover,
          //           ),
          //         ],
          // autoPlayInterval: 3000,
          // isLoop: true,
          //       ),
          //     ),
          //     SizedBox(
          //       height: 40,
          //     ),
          // Container(
          //   child: Flexible(
          //child:
          Column(
        children: [
          // ListView(
          //   scrollDirection: Axis.horizontal,
          //   shrinkWrap: true,
          //   children: [
          //     Row(
          //       children: [
          //         Text("$ImgCount"),
          //         SizedBox(width: 4),
          //       ],
          //     ),
          //     for (var item in imagelist)
          //       Center(
          //         child: Container(width: 400, height: 300, child: item),
          //       )
          //   ],
          // ),
          Container(
            padding: EdgeInsets.only(top: 100),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.green)),
                onPressed: () {
                  const snackdemo = SnackBar(
                    content: Text('Helooo'),
                    backgroundColor: Color.fromARGB(255, 29, 90, 223),
                    elevation: 5,
                    behavior: SnackBarBehavior.floating,
                    margin: EdgeInsets.all(5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackdemo);
                },
                child: const Text('Click Here'),
              ),
            ),
          ),
          Container(
            child: BottomAppBar(
                child: Row(
              children: [Text("DDDDdd")],
            )),
          )
        ],
      ),
    );
    //       )
    //     ],
    //   ),
    // );
  }
}

// Container(
//   child: Padding(
//     padding: const EdgeInsets.only(top: 50, left: 22),
//     child: const Text(
//       "Notifications",
//       style: TextStyle(fontSize: 20),
//     ),
//   ),
// ),
// Container(
//   child: Flexible(
//     child: AppButton(
//       onTap: () {},
//       text1: "Notification Title",
//       text2: 'Notifiaction Description',
//       nameimage: "language-translation.svg",
//     ),
//   ),
// ),
//         ],
//       ),
//     );
//   }
// }

// ignore: file_names
// ignore: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class Notifiacation extends StatelessWidget {
//   // ignore: prefer_typing_uninitialized_variables
//   final nameimage;
//   String text1;
//   String text2;
//   var today = DateTime.now();
//   // String currentDate = DateFormat('dd-MM-yyyy').format(DateTime.now());
//   VoidCallback onTap;
//   Notifiacation(
//       {required this.nameimage,
//       required this.text1,
//       required this.text2,
//       required this.onTap});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         // crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(left: 17, right: 17, top: 10),
//             child: SizedBox(
//                 width: 384,
//                 height: 85,
// child: ListTile(
//   leading: SizedBox(
//     height: 45,
//     width: 45,
// child: CircleAvatar(
    // radius: 56,
    // backgroundColor: Color(0xffA21B31),
    // child: SvgPicture.asset(
    //   "assets/" + nameimage,
    //   width: 25,
    //   height: 25,
    //   color: Colors.white,
    // )),
//   ),
//   title: Text(
//     text1,
//     // ignore: prefer_const_constructors
//     style: TextStyle(
//         fontSize: 14,
//         fontWeight: FontWeight.w600,
//         color: Colors.black),
//   ),
//   subtitle: Text(text2),
//   trailing: Padding(
//     padding: const EdgeInsets.only(bottom: 4),
//     child: Text("dfdfdf"),
//   ),
//   onTap: () {},
// )
// ),
//           ),
//         ],
//       ),
//     );
//   }
// }
