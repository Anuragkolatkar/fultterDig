import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class Expanded_page extends StatefulWidget {
  const Expanded_page({super.key});

  @override
  State<Expanded_page> createState() => _Expanded_pageState();
}

class _Expanded_pageState extends State<Expanded_page> {
  late bool _custom = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 80, left: 19, right: 19),
                child: Container(
                  height: 80,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(colors: [
                                Color(0xffED213A),
                                Color(0xff93291E)
                              ]).createShader(bounds);
                            },
                            child: SvgPicture.asset(
                              "assets/search.svg",
                              width: 45,
                              height: 45,
                            ),
                            blendMode: BlendMode.srcATop,
                          ),
                        ),
                        hintText: "Hey, Ask your Question",
                        // ignore: prefer_const_constructors
                        hintStyle: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xffC8C8C8)),
                        border: const GradientOutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          gradient: LinearGradient(
                              colors: [Color(0xffED213A), Color(0xff93291E)]),
                          width: 1,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 380,
                child: Card(
                  color: const Color(0xffFFF0F0),
                  child: ExpansionTile(
                    title: Row(
                      children: [
                        Container(
                          height: 60,
                          child: CircleAvatar(
                            radius: 13,
                            backgroundColor: const Color(0xffA21B31),
                            child: SvgPicture.asset(
                              "assets/help.svg",
                              width: 20,
                              height: 20,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const Padding(padding: EdgeInsets.only(left: 15)),
                        Container(
                          child: const Text(
                            'How to use digiyug ?',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: Color(0xffA21B31)),
                          ),
                        ),
                      ],
                    ),

                    // ignore: prefer_const_literals_to_create_immutables, sort_child_properties_last
                    children: <Widget>[
                      const ListTile(
                        title: Padding(
                          padding:
                              EdgeInsets.only(left: 40, right: 20, bottom: 30),
                          child: Text(
                            'If you need to ad an icon in the Textfield use the arguments prefixIcon and suffixIcon inside it, like data',
                            style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 2,
                                color: Color(0xffAAAAAA)),
                          ),
                        ),
                      )
                    ],
                    trailing: Icon(
                      _custom
                          ? Icons.keyboard_arrow_up_outlined
                          : Icons.keyboard_arrow_down_outlined,
                      color: const Color(0xffA21B31),
                      size: 30,
                    ),
                    onExpansionChanged: (bool expanded) {
                      setState(() => _custom = expanded);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 460, left: 19, right: 19),
                child: Container(
                  height: 80,
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(
                              left: 14, right: 14, top: 5),
                          child: ShaderMask(
                            shaderCallback: (Rect bounds) {
                              return const LinearGradient(colors: [
                                Color(0xffED213A),
                                Color(0xff93291E)
                              ]).createShader(bounds);
                            },
                            child: SvgPicture.asset(
                              "assets/send.svg",
                              width: 40,
                              height: 40,
                            ),
                            blendMode: BlendMode.srcATop,
                          ),
                        ),
                        hintText:
                            "Hey,send your qestion if it is not in the list",
                        hintStyle: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xffC8C8C8)),
                        border: const GradientOutlineInputBorder(
                          borderRadius: BorderRadius.zero,
                          gradient: LinearGradient(
                              colors: [Color(0xffED213A), Color(0xff93291E)]),
                          width: 1,
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
