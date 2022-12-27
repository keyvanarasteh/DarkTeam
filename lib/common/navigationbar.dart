// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class SNavigationBar extends StatefulWidget {
  const SNavigationBar({super.key});

  @override
  State<SNavigationBar> createState() => _SNavigationBarState();
}

class _SNavigationBarState extends State<SNavigationBar> {

  double volume = 0.5;

  String ekranBoyutu(double width) {
    if (width <= 576) {
      return "mobile";
    } else if (width <= 768) {
      return "tablet";
    } else if (width <= 992) {
      return "desktop";
    } else {
      return "large";
    }
  }

  Widget navbar(BuildContext context, String device) {
    if (device == 'mobile') {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Icon(Icons.home),
            SizedBox(
              width: 14.0,
            ),
            const Icon(Icons.search_outlined),
            SizedBox(
              width: 11.0,
            ),
            const Icon(Icons.library_books_outlined),
            SizedBox(
              width: 11.0,
            ),
            const Icon(Icons.radio_outlined),
            SizedBox(
              width: 11.0,
            ),
            const Icon(Icons.favorite),
            SizedBox(
              width: 11.0,
            ),
          ],
        ),
      );

      Row(children: [
        const SizedBox(
          width: 10,
        ),
        Image.asset(
          'assets/images/spotify_logo.png',
          height: 40,
        ),
      ]);
    } else if (device == 'desktop' || device == 'large') {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            // ignore: prefer_const_literals_to_create_immutables
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.shuffle_outlined, color: Colors.grey),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.skip_previous_outlined,
                    color: Colors.grey),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.play_circle_outline_rounded,
                    color: Colors.grey),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.skip_next_outlined, color: Colors.grey),
              ),
              // ignore: prefer_const_constructors
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: const Icon(Icons.repeat_outlined, color: Colors.grey),
              ),
            ]),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(width: 280,),
              Row(
                children: [
                  const Text(
                    '0:00',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 3,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      border: Border.all(
                        color: Colors.grey,
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                  Text(
                    '0:00',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                                ],
              ),
              SizedBox(width: 100,),
                  Row(
                    children: [
                      Icon(Icons.volume_down_outlined),
                    
                      SizedBox(
                        width: 11.0,
                        height: 10,
                      ),
                      Container(
                        // alignment: Alignment.centerRight,
                        width: 100,
                        height: 10,
                        child: Slider(
                          activeColor: Colors.grey,
                          thumbColor: Colors.green,
                          value: volume,
                          onChanged: (value) {
                            print(value);
                            setState(() {
                              volume=value;
                            });
                          },
                        ),
                        decoration: BoxDecoration(
                          //color: Colors.pink,
                          // border: Border.all(
                          //   color: Colors.grey,
                          // ),
                          // borderRadius:
                          //     BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                    ],
                  )
  
            ],
          ),
        ],
      );
    } else {
      return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranBoyutu(screenWidth);
    return Container(
      color: Colors.black,
      width: double.infinity,
      height: 80,
      child: navbar(context, device),
    );
  }
}
