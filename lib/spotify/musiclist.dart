import 'package:flutter/material.dart';

class musiclist extends StatefulWidget {
  const musiclist({super.key});

  @override
  State<musiclist> createState() => _musiclistState();
}

double gorselSefafligi = 0.9;

List<dynamic> urunler = [];

class _musiclistState extends State<musiclist> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [
                    Color.fromARGB(255, 6, 190, 0),
                    Colors.black.withOpacity(0.6)
                  ],
                      stops: [
                    0.0,
                    0.4
                  ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      tileMode: TileMode.repeated)),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    backgroundColor: Color.fromARGB(255, 11, 11, 11),
                    expandedHeight: 250,
                    // appbarın üst kısıma sabit durmasını sağlar.
                    pinned: true,
                    // elevetion gölge verir.
                    elevation: 20,
                    leading: IconButton(
                      icon: Icon(
                        Icons.chevron_left_outlined,
                        color: Color.fromARGB(255, 0, 163, 19),
                        size: 30,
                      ),
                      onPressed: () => Navigator.pop(context),
                    ),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Column(
                        children: [
                          Opacity(
                            opacity: gorselSefafligi,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  'assets/images/sezen3.jpg',
                                  width: 500,
                                  height: 250,
                                  fit: BoxFit.fill,
                                )),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      // listeyi 10 tane ile sınırladık sadece index olursa sonusz olur.
                      childCount: 20,
                      (_, index) => Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(index.toString()),
                              SizedBox(width: 10),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Sezen Aksu',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      'Begonvil',
                                      style: TextStyle(
                                          fontStyle: FontStyle.italic),
                                    ),
                                  ],
                                ),
                              ),
                              Icon(
                                Icons.play_arrow,
                                color: Color.fromARGB(255, 0, 163, 19),
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.more_vert,
                                color: Color.fromARGB(255, 0, 164, 19),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
