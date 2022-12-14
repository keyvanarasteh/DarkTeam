// ignore_for_file: prefer_const_constructors, unused_import, avoid_web_libraries_in_flutter

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive/common/navigationbar.dart';
import 'package:responsive/common/spotify_appbar.dart';
import 'package:responsive/spotify/drawer_menu.dart';
import 'package:responsive/spotify/drawer_menu_tablet.dart';
import 'package:responsive/spotify/musiclist.dart';

class SpotifyScreen extends StatefulWidget {
  const SpotifyScreen({super.key});

  @override
  State<SpotifyScreen> createState() => _SpotifyScreenState();
}

class _SpotifyScreenState extends State<SpotifyScreen> {
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

  Set<String> skills = {};

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranBoyutu(screenWidth);

    Widget buildScreen() {
      if (device == "mobile") {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 10, 10, 10),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Wrap(
                  children: [
                    InputChip(
                      label: Text("POP"),
                      selected: skills.contains("POP"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("POP");
                        } else {
                          skills.remove("POP");
                        }
                        setState(() {});
                      },
                    ),
                    InputChip(
                      label: Text("KLAS??K"),
                      selected: skills.contains("KLAS??K"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("KLAS??K");
                        } else {
                          skills.remove("KLAS??K");
                        }
                        setState(() {});
                      },
                    ),
                    InputChip(
                      label: Text("RAP"),
                      selected: skills.contains("RAP"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("RAP");
                        } else {
                          skills.remove("RAP");
                        }
                        setState(() {});
                      },
                    ),
                    InputChip(
                      label: Text("SLOW"),
                      selected: skills.contains("SLOW"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("SLOW");
                        } else {
                          skills.remove("SLOW");
                        }
                        setState(() {});
                      },
                    ),
                    InputChip(
                      label: Text("CAZ"),
                      selected: skills.contains("CAZ"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("CAZ");
                        } else {
                          skills.remove("CAZ");
                        }
                        setState(() {});
                      },
                    ),
                    InputChip(
                      label: Text("ROCK"),
                      selected: skills.contains("ROCK"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("ROCK");
                        } else {
                          skills.remove("ROCK");
                        }
                        setState(() {});
                      },
                    ),
                    InputChip(
                      label: Text("H??P HOP"),
                      selected: skills.contains("H??P HOP"),
                      selectedColor: Color.fromARGB(255, 4, 191, 10),
                      shadowColor: Color.fromARGB(255, 177, 252, 179),
                      backgroundColor: Colors.green.shade700,
                      onSelected: (value) {
                        if (value) {
                          skills.add("H??P HOP");
                        } else {
                          skills.remove("H??P HOP");
                        }
                        setState(() {});
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          "2022'nin Favorileri",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Color.fromARGB(255, 10, 10, 10),
                  child: GestureDetector(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => musiclist()));
                    }),
                    child: Container(
                      height: 300,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Row(
                            children: [
                              AdItem1(
                                image: 'assets/images/sezen.png',
                                text:
                                    "T??rkiyenin En ??ok Dinlenilen Kad??n Sanat????s??",
                              ),
                              AdItem1(
                                image: 'assets/images/resim3.png',
                                text: "Y??l??n En ??ok Dinlenen Grubu ",
                              ),
                              AdItem1(
                                image: 'assets/images/resim1.png',
                                text: "Y??l??n En ??ok Dinlenilen Sanat????s??",
                              ),
                              AdItem1(
                                image: 'assets/images/resim4.png',
                                text: "Y??l??n En ??ok Dinlenilen Alb??m??",
                              ),
                              AdItem1(
                                image: 'assets/images/resim5.png',
                                text: "Y??l??n En ??ok Dinlenilen Erkek Sanat????s??",
                              ),
                              AdItem1(
                                image: 'assets/images/resim6.png',
                                text: "Y??l??n En ??ok Dinlenilen ??ark??s??",
                              ),
                              AdItem1(
                                image: 'assets/images/resim7.png',
                                text: "Y??l??n En ??ok Dinlenilen Grubu",
                              ),
                              AdItem1(
                                image: 'assets/images/mavigri.png',
                                text:
                                    "Y??l??n En ??ok Dinlenilen ??ark??s?? Alt??st Olmu??um",
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        bottom: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              "Pop??ler Radyolar",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      //??st ??ste iki container kullanmak i??in kullan??l??r.
                      color: Color.fromARGB(255, 10, 10, 10),
                      child: Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                AdItem2(
                                  image: 'assets/images/ikincis??ra1.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra2.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra3.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra4.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra5.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra6.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra7.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincis??ra8.png',
                                  text: "",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  'Pop??ler Sanat????lar',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Card(
                      color: Color.fromARGB(255, 10, 10, 10),
                      child: Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m1.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m2.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m3.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m4.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m5.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m6.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m7.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                                AdItem3(
                                  image: 'assets/images/??????nc??k??s??m8.png',
                                  text: "Y??l??n Pop??ler Sanat????s??",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 10.0, bottom: 10.0),
                          child: Row(
                            children: [
                              Container(
                                child: Text(
                                  'Pop??ler Alb??mler',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Card(
                      color: Color.fromARGB(255, 10, 10, 10),
                      child: Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m1.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m2.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m3.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m4.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m8.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m6.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m7.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/d??rd??nc??k??s??m8.png',
                                  text: "",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      } else if (device == "tablet") {
        return Row(
          children: [
            Expanded(flex: 2, child: DrawerTablet()),
            Expanded(
              flex: 10,
              child: Scaffold(
                backgroundColor: Color.fromARGB(255, 10, 10, 10),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Wrap(
                        children: [
                          InputChip(
                            label: Text("POP"),
                            selected: skills.contains("POP"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("POP");
                              } else {
                                skills.remove("POP");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("KLAS??K"),
                            selected: skills.contains("KLAS??K"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("KLAS??K");
                              } else {
                                skills.remove("KLAS??K");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("RAP"),
                            selected: skills.contains("RAP"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("RAP");
                              } else {
                                skills.remove("RAP");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("SLOW"),
                            selected: skills.contains("SLOW"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("SLOW");
                              } else {
                                skills.remove("SLOW");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("CAZ"),
                            selected: skills.contains("CAZ"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("CAZ");
                              } else {
                                skills.remove("CAZ");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("ROCK"),
                            selected: skills.contains("ROCK"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("ROCK");
                              } else {
                                skills.remove("ROCK");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("H??P HOP"),
                            selected: skills.contains("H??P HOP"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("H??P HOP");
                              } else {
                                skills.remove("H??P HOP");
                              }
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "2022'nin Favorileri",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => musiclist()));
                          }),
                          child: Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(
                                  children: [
                                    AdItem1(
                                      image: 'assets/images/sezen.png',
                                      text:
                                          "T??rkiyenin En ??ok Dinlenilen Kad??n Sanat????s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim3.png',
                                      text: "Y??l??n En ??ok Dinlenen Grubu ",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim1.png',
                                      text: "Y??l??n En ??ok Dinlenilen Sanat????s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim4.png',
                                      text: "Y??l??n En ??ok Dinlenilen Alb??m??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim5.png',
                                      text:
                                          "Y??l??n En ??ok Dinlenilen Erkek Sanat????s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim6.png',
                                      text: "Y??l??n En ??ok Dinlenilen ??ark??s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim7.png',
                                      text: "Y??l??n En ??ok Dinlenilen Grubu",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/mavigri.png',
                                      text:
                                          "Y??l??n En ??ok Dinlenilen ??ark??s?? Alt??st Olmu??um",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    'Pop??ler Radyolar',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra1.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra2.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra3.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra4.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra5.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra6.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra7.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra8.png',
                                    text: "",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 13.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Pop??ler Sanat????lar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m1.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m2.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m3.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m4.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m5.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m6.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m7.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m8.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Pop??ler Alb??mler ",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m1.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m2.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m3.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m4.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m8.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m6.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m7.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m8.png',
                                    text: "",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      } else if (device == "desktop" || device == "large") {
        return Row(
          children: [
            Expanded(flex: 3, child: SpotifyDrawer()),
            Expanded(
              flex: 8,
              child: Scaffold(
                backgroundColor: Color.fromARGB(255, 10, 10, 10),
                body: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      Wrap(
                        children: [
                          InputChip(
                            label: Text("POP"),
                            selected: skills.contains("POP"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("POP");
                              } else {
                                skills.remove("POP");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("KLAS??K"),
                            selected: skills.contains("KLAS??K"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("KLAS??K");
                              } else {
                                skills.remove("KLAS??K");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("RAP"),
                            selected: skills.contains("RAP"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("RAP");
                              } else {
                                skills.remove("RAP");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("SLOW"),
                            selected: skills.contains("SLOW"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("SLOW");
                              } else {
                                skills.remove("SLOW");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("CAZ"),
                            selected: skills.contains("CAZ"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("CAZ");
                              } else {
                                skills.remove("CAZ");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("ROCK"),
                            selected: skills.contains("ROCK"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("ROCK");
                              } else {
                                skills.remove("ROCK");
                              }
                              setState(() {});
                            },
                          ),
                          InputChip(
                            label: Text("H??P HOP"),
                            selected: skills.contains("H??P HOP"),
                            selectedColor: Color.fromARGB(255, 4, 191, 10),
                            shadowColor: Color.fromARGB(255, 177, 252, 179),
                            backgroundColor: Colors.green.shade700,
                            onSelected: (value) {
                              if (value) {
                                skills.add("H??P HOP");
                              } else {
                                skills.remove("H??P HOP");
                              }
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, bottom: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                "2022'nin Favorileri",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => musiclist()));
                          }),
                          child: Container(
                            height: 300,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                Row(
                                  children: [
                                    AdItem1(
                                      image: 'assets/images/sezen.png',
                                      text:
                                          "T??rkiyenin En ??ok Dinlenilen Kad??n Sanat????s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim3.png',
                                      text: "Y??l??n En ??ok Dinlenen Grubu ",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim1.png',
                                      text: "Y??l??n En ??ok Dinlenilen Sanat????s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim4.png',
                                      text: "Y??l??n En ??ok Dinlenilen Alb??m??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim5.png',
                                      text:
                                          "Y??l??n En ??ok Dinlenilen Erkek Sanat????s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim6.png',
                                      text: "Y??l??n En ??ok Dinlenilen ??ark??s??",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/resim7.png',
                                      text: "Y??l??n En ??ok Dinlenilen Grubu",
                                    ),
                                    AdItem1(
                                      image: 'assets/images/mavigri.png',
                                      text:
                                          "Y??l??n En ??ok Dinlenilen ??ark??s?? Alt??st Olmu??um",
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 10.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Pop??ler Radyolar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra1.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra2.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra3.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra4.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra5.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra6.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra7.png',
                                    text: "",
                                  ),
                                  AdItem2(
                                    image: 'assets/images/ikincis??ra8.png',
                                    text: "",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 13.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Pop??ler Sanat????lar",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m1.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m2.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m3.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m4.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m5.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m6.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m7.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                  AdItem3(
                                    image: 'assets/images/??????nc??k??s??m8.png',
                                    text: "Y??l??n Pop??ler Sanat????s??",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(left: 10.0, bottom: 13.0),
                            child: Row(
                              children: [
                                Container(
                                  child: Text(
                                    "Pop??ler Alb??mler",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Card(
                        color: Color.fromARGB(255, 10, 10, 10),
                        child: Container(
                          height: 300,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Row(
                                children: [
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m1.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m2.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m3.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m4.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m8.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m6.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m7.png',
                                    text: "",
                                  ),
                                  AdItem4(
                                    image: 'assets/images/d??rd??nc??k??s??m8.png',
                                    text: "",
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      } else {
        return Container();
      }
    }

    return Scaffold(
      body: Column(children: [
        const spotifyappbar(),
        Expanded(
          child: buildScreen(),
        ),
      ]),
      bottomNavigationBar: const SNavigationBar(),
    );
  }
}

class AdItem1 extends StatelessWidget {
  final String image;
  final String text;

  const AdItem1({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(width: 185, child: Image.asset(image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                width: 185,
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white54),
                )),
          ),
        ],
      ),
    );
  }
}

class AdItem2 extends StatelessWidget {
  final String image;
  final String text;

  const AdItem2({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Container(width: 185, child: Image.asset(image)),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 185,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            )),
      ]),
    );
  }
}

class AdItem3 extends StatelessWidget {
  final String image;
  final String text;

  const AdItem3({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Container(
            height: 150,
            width: 150,
            child: CircleAvatar(backgroundImage: AssetImage(image))),
        Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 35),
            child: Container(
              width: 185,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            )),
      ]),
    );
  }
}

class AdItem4 extends StatelessWidget {
  final String image;
  final String text;

  const AdItem4({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
        Container(width: 185, child: Image.asset(image)),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: 185,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white54,
                ),
              ),
            )),
      ]),
    );
  }
}
