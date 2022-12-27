import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive/spotify/spotify_screen.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool kutuAcikMi = false;

  onayAl_android() {
    showDialog( 
        context: context,
        barrierDismissible: true,
        builder: (_) => AlertDialog( backgroundColor: Colors.white54,
          
                title: Text('giriş', ),
                content: Text('Giriş Yapmayı Onaylıyor musunuz'),
                
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>SpotifyScreen() ));
                    },
                    child: Text('Evet' ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('Hayır'),
                  ),
                ]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: SingleChildScrollView(
              child:      
            SizedBox(
              child: Stack(
                children: [
                  Image.asset('assets/images/2.png', opacity: const AlwaysStoppedAnimation(.10),
                
                       ),
                       Center(
                         child: Padding(
                           padding: const EdgeInsets.only(top:90),
                           child: Container(
                                  height: 180.0,
                                  width: 150.0,
                                  decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/images/logo.png',),
                                fit: BoxFit.fill,
                              )
                            )
                           ),
                         ),
                       ),
                  Padding(
                    padding: const EdgeInsets.only(top:300 ),
                    
                    child: Form(
                        child: Padding(
                          padding: const EdgeInsets.all(70.0),
                          child: Column(
                      children: [
                          SizedBox(
                            height: 30,
                            child: TextFormField(
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  labelText: "E-posta veya Telefon ", 
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder( 
                                    
                                  ),
                                )),
                          ),


                              
                          SizedBox(
                            height: 30,
                          ),
                          TextField(
                            keyboardType: TextInputType.number,
                            inputFormatters: [
                              FilteringTextInputFormatter.digitsOnly
                            ],
                            decoration: InputDecoration(
                              labelText: "Şifre Giriniz",
                              prefixIcon: Icon(Icons.password),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    onayAl_android();
                                  },
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text('GİRİŞ'),
                                    ],
                                  ),
                                ),
                                Padding(padding: EdgeInsets.all(30)),
                                ExpansionPanelList(
                                  animationDuration: Duration(seconds: 1),
                                  expansionCallback: (index, isopen) {
                                    setState(() {
                                      kutuAcikMi = !isopen;
                                    });
                                  },
                                  children: [
                                    ExpansionPanel(
                                      backgroundColor: Colors.transparent,
                                      headerBuilder: ((context, isExpanded) {
                                        return Center(
                                          child: Text(
                                            'Üyelik Sözleşmesi',
                                            style: TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        );
                                      }),
                                      body: Text(
                                        'ÜYELER VE KULLANICILAR hukukfuar.com sitesini kullanım konusunda bilgilendirme amacı taşıyan aşağıda yazılı koşulları okuduğunu ve bu koşullara peşinen uyacağını kabul etmiş sayılmaktadır. ',
                                        style: TextStyle(
                                            color: Color.fromARGB(
                                                255, 184, 186, 188),
                                            fontStyle: FontStyle.italic,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      isExpanded: kutuAcikMi,
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                      ],
                    ),
                        )),
                  )
                ],
              ),
            ),
          )),
        );
  }
}
