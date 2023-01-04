import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive/spotify/spotify_screen.dart';

class login2 extends StatefulWidget {
  const login2({super.key});

  @override
  State<login2> createState() => _login2State();
}

class _login2State extends State<login2> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    // final height tanımladık tüm sayafya ve /2 ile aşagı kısımda sayfayı böldük
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SizedBox(
        height: height,
        width: double.infinity,
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              height: height / 2,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 22, 172, 2),
                  // kutunun kenarlarını ovalleştirdik bu kısımda dekarasyon ekledik.
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    child: Image.asset("assets/images/1logo.png"),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Milyonlarca Ücretsiz Şarkı Spotify'da",
                      style: TextStyle(
                          fontSize: 18,
                          color: Color.fromARGB(255, 213, 214, 215),
                          fontWeight: FontWeight.w600,
                          fontFamily: "Roboto",
                          fontStyle: FontStyle.normal))
                ],
              ),
            ),
            //widgetların kaydırılabilir olmasını sağlar Genellikle Column ve Row gibi birden çok child sayfaya sığmaması durumunda sayfayı kaydırılabilir yaparak widgetların sıkışmamasını sağlar
            SingleChildScrollView(
              child: SizedBox(
                height: height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height:450,
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 40),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 0, 0, 0),
                          borderRadius: BorderRadius.circular(32)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            "GİRİŞ",
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.w500),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 22,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(

                              labelText: "E-posta veya Telefon ",
                              prefixIcon: Icon(Icons.email),
                              border: OutlineInputBorder(),
                              
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextField(
                            // klavyeden sadece numara girişine izin ver yaptık ve 20 karakter sınırı verdik
                            keyboardType: TextInputType.number,
                            obscureText: true,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            maxLength: 20,
                            decoration: InputDecoration(
                              labelText: "Şifre Giriniz",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                          ),


                           Row(
                            children: [
                              Row(
                                children: [
                                  TextButton(
                                      child: Text(
                                        'Şifremi Unuttum',
                                        style: TextStyle(
                                            color: Color.fromARGB(255, 3, 173, 9)),
                                      ),
                                      onPressed: () {})
                                ],
                              ),
                            ],
                          ),
                            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(5),
                                child:
                                    Text('Kişilerinizi Bağlamak İstermisiniz:'),
                              ),
                              CupertinoSwitch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                    print(isSwitched);
                                  });
                                },
                                activeColor: Colors.green,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                         Column(
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    SizedBox(
                                      width: 200,
                                      height: 40,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      SpotifyScreen()));
                                        },
                                        style: ElevatedButton.styleFrom(
                                          backgroundColor:  Color.fromARGB(255, 3, 173, 9),
                                          padding: EdgeInsets.all(10),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20.0)),
                                        ),
                                      
                                        child: Center(child: Text('GİRİŞ')),
                                      ),
                                    ),
                                   
                                  ],
                                ),
                              ],
                            ),
                        
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
