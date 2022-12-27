import 'package:flutter/material.dart';
import 'package:responsive/spotify/login.dart';

class spotify_ekran extends StatefulWidget {
  const spotify_ekran({super.key});

  @override
  State<spotify_ekran> createState() => _spotify_ekranState();
}

class _spotify_ekranState extends State<spotify_ekran> {
  final controller = PageController(
    initialPage: 0,
  );
  double gorselSefafligi = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          login(),
          ikincisayfa(),
        ],
      ),
    );
  }

  Container ikincisayfa() => Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 5,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: gorselSefafligi,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(150),
                        child: Image.asset(
                          'assets/images/resim2.png',
                          width: 450,
                          height: 210,
                        )),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Slider(
                activeColor: Colors.green.shade600,
                value: gorselSefafligi,
                onChanged: (double value) {
                  gorselSefafligi = value;
                  setState(() {
                    
                  });
                },
              ),
              SizedBox(
                height: 30,
              ),
              Wrap(
                children: [
                  Chip(
                    avatar: Icon(Icons.music_note),
                    label: Text('Pop'),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 177, 252, 179),
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                  Chip(
                    avatar: Icon(Icons.music_note),
                    label: Text('Rap'),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 177, 252, 179),
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                  Chip(
                    avatar: Icon(Icons.music_note),
                    label: Text('Klasik'),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 3,
                    ),
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 177, 252, 179),
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                  Chip(
                    avatar: Icon(Icons.music_note),
                    label: Text('Caz'),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 177, 252, 179),
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                  Chip(
                    avatar: Icon(Icons.music_note),
                    label: Text('Slow'),
                    labelPadding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    elevation: 15,
                    shadowColor: Color.fromARGB(255, 177, 252, 179),
                    backgroundColor: Colors.green.shade700,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                  ),
                ],
              ),
              
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Container(
                  child: Image.asset('assets/images/indir2.png',
                      opacity: const AlwaysStoppedAnimation(.10)),
                  width: 400,
                  height: 150,
                ),
              ),
              Container(
                child: Text(
                    "> Reklamsız müzik dinleme, çevrimdışı çalma ve diğer avantajları kaçırma. İstediğin zaman iptal et.",
                  style: TextStyle(
                    color: Color.fromARGB(255, 51, 50, 50),
                    fontSize: 18,
                  ),
                ),
              )
            ],
          ),
        ),
      );
}
