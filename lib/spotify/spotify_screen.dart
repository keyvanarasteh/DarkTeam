// ignore_for_file: prefer_const_constructors, unused_import, avoid_web_libraries_in_flutter

import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:responsive/common/navigationbar.dart';
import 'package:responsive/common/spotify_appbar.dart';
import 'package:responsive/spotify/drawer_menu.dart';
import 'package:responsive/spotify/drawer_menu_tablet.dart';

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

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranBoyutu(screenWidth);

    Widget buildScreen() {
      if (device == "mobile") {
        return Scaffold(
          backgroundColor: Color.fromARGB(255, 10, 10, 10),
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(child: Text("2022'nin Favorileri",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: ListView(
                            scrollDirection: Axis.horizontal,
                    children: [
                      Row(children: [
                      
                       AdItem1(
                        image: 'assets/images/resim2.png',
                        text:"Türkiyenin En Çok Dinlenilen Kadın Sanatçısı",
                       ), 
                       AdItem1(
                        image: 'assets/images/resim3.png',
                        text: "Yılın En çok Dinlenen Grubu ",

                      ), 
                      
                      AdItem1(
                        image: 'assets/images/resim1.png',
                        text: "Yılın En Çok Dinlenilen Sanatçısı",

                      ),
                       AdItem1(
                            image: 'assets/images/resim4.png',
                            text: "Yılın En Çok Dinlenilen Albümü",
                          ),
                           AdItem1(
                            image: 'assets/images/resim5.png',
                            text: "Yılın En Çok Dinlenilen Erkek Sanatçısı",
                          ),
                           AdItem1(
                            image: 'assets/images/resim6.png',
                            text: "Yılın En Çok Dinlenilen Şarkısı",
                          ),
                           AdItem1(
                            image: 'assets/images/resim7.png',
                            text: "Yılın En Çok Dinlenilen Grubu",
                          ),
                           AdItem1(
                            image: 'assets/images/mavigri.png',
                            text: "Yılın En Çok Dinlenilen Şarkısı Altüst Olmuşum",
                          ),
                      ],
                      ), 
                    ],
                  
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50,
                    
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, bottom: 10,),
                      child: Row( 
                  
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(child: Text("Popüler Radyolar",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        ),
                  ],
                  
                ),
                    ),
                
                 Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          AdItem2(
                            image: 'assets/images/ikincisıra1.png',
                             text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra2.png',
                             text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra3.png',
                             text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra4.png',
                            text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra5.png',
                            text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra6.png',
                            text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra7.png',
                            text: "",
                          ),
                          AdItem2(
                            image: 'assets/images/ikincisıra8.png',
                            text: "",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                 Column(
                   children: [
                     SizedBox(
                      height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,bottom: 12.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [Container(child: Text('Popüler Sanatçılar',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)],),
                )
                   ],
                 ),
                Container(
                    height: 300,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                    
                      children: [
                        Row(
                          children: [                          
                            AdItem3(
                              image: 'assets/images/üçüncükısım1.png',
                               text: "Yılın Popüler Sanatçısı",
                            ),
                            AdItem3(
                              image: 'assets/images/üçüncükısım2.png',
                              text: "Yılın Popüler Sanatçısı",
                            ),
                            AdItem3(
                              image: 'assets/images/üçüncükısım3.png',
                               text: "Yılın Popüler Sanatçısı",
                            ),
                            AdItem3(
                                  image: 'assets/images/üçüncükısım4.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım5.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım6.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım7.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım8.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                          ],
                        ),
                      ],
                    ),
                  ),
                 Column(
                   children: [
                     SizedBox(
                      height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,bottom: 10.0),
                  child: Row(children: [Container(child: Text('Popüler Albümler' ,style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold ),),)],),
                )
                   ],
                 ),
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          AdItem4(
                            image: 'assets/images/dördüncükısım1.png',
                            text: "",
                          ),
                          AdItem4(
                            image: 'assets/images/dördüncükısım2.png',
                             text: "",
                          ),
                          AdItem4(
                            image: 'assets/images/dördüncükısım3.png',
                             text: "",
                          ),
                          AdItem4(
                                image: 'assets/images/dördüncükısım4.png',
                                text: "",
                              ),
                              AdItem4(
                                image: 'assets/images/dördüncükısım8.png',
                                text: "",
                              ),
                            
                            AdItem4(
                                image: 'assets/images/dördüncükısım6.png',
                                text: "",
                              ),
                              AdItem4(
                                image: 'assets/images/dördüncükısım7.png',
                                text: "",
                              ),
                                AdItem4(
                            image: 'assets/images/dördüncükısım8.png',
                             text: "",
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
              ],
        ),
        ),
        );
          
            
      } else if (device == "tablet") {
        return 
        Row(
          children: [
            Expanded(flex:2,child: DrawerTablet()),
            Expanded(flex: 10,child:Scaffold(
          backgroundColor: Color.fromARGB(255, 10, 10, 10),
          body:
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 50,),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(child: Text("2022'nin Favorileri",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),),
                    ],
                  ),
                ),
                Container(
                  height: 300,
                  child: ListView(
                            scrollDirection: Axis.horizontal,
                    children: [
                      Row(children: [ 
                      
                      AdItem1(
                        image: 'assets/images/resim2.png',
                        text:"Türkiyenin En Çok Dinlenilen Kadın Sanatçısı",
                       ), 
                       AdItem1(
                        image: 'assets/images/resim3.png',
                        text: "Yılın En çok Dinlenen Grubu ",

                      ), 
                      
                      AdItem1(
                        image: 'assets/images/resim1.png',
                        text: "Yılın En Çok Dinlenilen Sanatçısı",

                      ),
                       AdItem1(
                            image: 'assets/images/resim4.png',
                            text: "Yılın En Çok Dinlenilen Albümü",
                          ),
                           AdItem1(
                            image: 'assets/images/resim5.png',
                            text: "Yılın En Çok Dinlenilen Erkek Sanatçısı",
                          ),
                           AdItem1(
                            image: 'assets/images/resim6.png',
                            text: "Yılın En Çok Dinlenilen Şarkısı",
                          ),
                           AdItem1(
                            image: 'assets/images/resim7.png',
                            text: "Yılın En Çok Dinlenilen Grubu",
                          ),
                           AdItem1(
                            image: 'assets/images/mavigri.png',
                            text: "Yılın En Çok Dinlenilen Şarkısı Altüst Olmuşum",
                          ),
                      ],
                      ), 
                    ],
                  
                  ),
                ),
                Column(
                  children: [
                    SizedBox(height: 50,),
                    Padding(
                      padding: const EdgeInsets.only(left:10.0, bottom: 10.0),
                      child: Row(children: [Container(child: Text('Popüler Radyolar' ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)],),
                    )
                  ],
                ),
                 Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          AdItem2(
                                  image: 'assets/images/ikincisıra1.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra2.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra3.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra4.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra5.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra6.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra7.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra8.png',
                                  text: "",
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
                 Column(
                   children: [
                     SizedBox(
                      height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,bottom: 13.0),
                  child: Row(children: [Container(child: Text("Popüler Sanatçılar" ,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)],),
                )
                   ],
                 ),
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          AdItem3(
                                  image: 'assets/images/üçüncükısım1.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım2.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım3.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım4.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım5.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım6.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım7.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım8.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
                 Column(
                   children: [
                     SizedBox(
                      height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(left:10.0,bottom:10.0),
                  child: Row(children: [Container(child: Text("Popüler Albümler " ,style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold) ,),)],),
                )
                   ],
                 ),
                Container(
                  height: 300,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Row(
                        children: [
                          AdItem4(
                                  image: 'assets/images/dördüncükısım1.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım2.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım3.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım4.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım8.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım6.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım7.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım8.png',
                                  text: "",
                                ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),),

           
          ],
        );
      } else if (device == "desktop" || device == "large") {
        return  Row(
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
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                AdItem1(
                                  image: 'assets/images/resim2.png',
                                  text:
                                      "Türkiyenin En Çok Dinlenilen Kadın Sanatçısı",
                                ),
                                AdItem1(
                                  image: 'assets/images/resim3.png',
                                  text: "Yılın En çok Dinlenen Grubu ",
                                ),
                                AdItem1(
                                  image: 'assets/images/resim1.png',
                                  text: "Yılın En Çok Dinlenilen Sanatçısı",
                                ),
                                AdItem1(
                                  image: 'assets/images/resim4.png',
                                  text: "Yılın En Çok Dinlenilen Albümü",
                                ),
                                AdItem1(
                                  image: 'assets/images/resim5.png',
                                  text:
                                      "Yılın En Çok Dinlenilen Erkek Sanatçısı",
                                ),
                                AdItem1(
                                  image: 'assets/images/resim6.png',
                                  text: "Yılın En Çok Dinlenilen Şarkısı",
                                ),
                                AdItem1(
                                  image: 'assets/images/resim7.png',
                                  text: "Yılın En Çok Dinlenilen Grubu",
                                ),
                                AdItem1(
                                  image: 'assets/images/mavigri.png',
                                  text:
                                      "Yılın En Çok Dinlenilen Şarkısı Altüst Olmuşum",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0,bottom:10.0),
                            child: Row(children: [Container(child: Text("Popüler Radyolar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)],),
                          )
                        ],
                      ),
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                              AdItem2(
                                  image: 'assets/images/ikincisıra1.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra2.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra3.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra4.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra5.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra6.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra7.png',
                                  text: "",
                                ),
                                AdItem2(
                                  image: 'assets/images/ikincisıra8.png',
                                  text: "",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,bottom:13.0),
                            child: Row(children: [Container(child: Text("Popüler Sanatçılar" ,style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold),),)],),
                          )
                        ],
                      ),
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                                AdItem3(
                                  image: 'assets/images/üçüncükısım1.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım2.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım3.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım4.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım5.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım6.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım7.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                                AdItem3(
                                  image: 'assets/images/üçüncükısım8.png',
                                  text: "Yılın Popüler Sanatçısı",
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 50,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left:10.0,bottom:13.0),
                            child: Row(children: [Container(child: Text("Popüler Albümler" ,  style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),)],),
                          )
                        ],
                      ),
                      Container(
                        height: 300,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Row(
                              children: [
                               AdItem4(
                                  image: 'assets/images/dördüncükısım1.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım2.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım3.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım4.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım8.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım6.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım7.png',
                                  text: "",
                                ),
                                AdItem4(
                                  image: 'assets/images/dördüncükısım8.png',
                                  text: "",
                                ),
                              ],
                            ),
                          ],
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
    Key? key, required this.image, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [

              Container(
                width: 185,
                child: Image.asset(image)),

  
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(width:185,child: Text(text,style: TextStyle(color: Colors.white54),)),
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
    required this.image, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Container(width: 185, child: Image.asset(image)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               width:185,child: Text(text,style: TextStyle(color: Colors.white54,
                ),),)
          ),
        ]
      ),
    );
  }
}
class AdItem3 extends StatelessWidget {
  final String image;
  final String text;

  const AdItem3({
    Key? key,
    required this.image, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(children: [
       
         Container(height: 150,
         width: 150,
          child: CircleAvatar(backgroundImage: AssetImage(image))),
        Padding(
            padding: const EdgeInsets.only(top:8.0,left:35),
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
    required this.image, required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
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
