import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive/spotify/login2.dart';
import 'package:responsive/spotify/spotify_screen.dart';

class register extends StatefulWidget {
  const register({super.key});

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  bool kutuAcikMi = false;
  String radioButtonItem = 'Cinsiyet';
  int id = 0;

  final controller = PageController(
    initialPage: 0,
  );

// Initial Selected Value
  String dropdownvalue = 'Yıl';

// List of items in our dropdown menu
  var items = [
    'Yıl',
    '1999',
    '2000',
    '2001',
    '2002',
    '2003',
    '2004',
    '2005',
  ];
  int value = 6;
  RangeValues _currentRangeValues = const RangeValues(10, 50);

  onayAl_android() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (_) => AlertDialog(
                backgroundColor: Color.fromARGB(133, 130, 135, 132),
                title: Text(
                  'KAYIT',
                ),
                content: Text('Kayıt Olmayı Onaylıyor musunuz'),
                actions: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SpotifyScreen()));
                    },
                    child: Text('Evet'),
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
      body: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          login2(),
          register(),
        ],
      ),
    );
  }

  Container register() => Container(
        color: Colors.white,
        child: Stack(children: [
          ClipRRect(
            child: Container(
              width: double.infinity,
              height: 160,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 22, 172, 2),
                  // kutunun kenarlarını ovalleştirdik bu kısımda dekarasyon ekledik.
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(60),
                    bottomRight: Radius.circular(60),
                  )),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 60,
                      child: Image.asset("assets/images/1logo.png"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            Container(
                height: 620,
                margin: const EdgeInsets.all(20),
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 40),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    borderRadius: BorderRadius.circular(32)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Kaydol",
                      style:
                          TextStyle(fontSize: 23, fontWeight: FontWeight.w500),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "Ad ve Soyad",
                        prefixIcon: Icon(Icons.account_circle),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        labelText: "E-posta veya Telefon ",
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextField(
                      // klavyeden sadece numara girişine izin ver yaptık ve 20 karakter sınırı verdik
                      keyboardType: TextInputType.number,
                      obscureText: true,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: "Şifre Giriniz",
                        prefixIcon: Icon(Icons.password),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            const Text(
                              "Cinsiyet Seçiniz:",
                              style: TextStyle(fontSize: 15),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Radio(
                              value: 1,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'Kadın';
                                  id = 1;
                                });
                              },
                            ),
                            Text(
                              'Kadın',
                              style: new TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Radio(
                              value: 2,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'Erkek';
                                  id = 2;
                                });
                              },
                            ),
                            Text(
                              'Erkek',
                              style: new TextStyle(
                                fontSize: 15,
                              ),
                            ),
                            Radio(
                              value: 3,
                              groupValue: id,
                              onChanged: (val) {
                                setState(() {
                                  radioButtonItem = 'Belirtmek İstemiyorum';
                                  id = 3;
                                });
                              },
                            ),
                            Text(
                              'Belirtmek İstemiyorum',
                              style: new TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(children: [
                      Text('Doğum yılı Seçiniz:'),
                      SizedBox(
                        width: 20,
                      ),
                      DropdownButton(
                        value: dropdownvalue,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: items.map((String items) {
                          return DropdownMenuItem(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            dropdownvalue = newValue!;
                          });
                        },
                      ),
                    ]),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Ortalama Müzik Dinleme Süreniz'),
                        RangeSlider(
                          values: _currentRangeValues,
                          min: 0,
                          max: 100,
                          divisions: 10,
                          activeColor: Color.fromARGB(255, 3, 173, 9),
                          inactiveColor: Colors.white,
                          labels: RangeLabels(
                            _currentRangeValues.start.round().toString(),
                            _currentRangeValues.end.round().toString(),
                          ),
                          onChanged: (RangeValues values) {
                            setState(() {
                              _currentRangeValues = values;
                            });
                          },
                        ),
                      ],
                    ),
                    ExpansionPanelList(
                      animationDuration: Duration(seconds: 0),
                      expansionCallback: (index, isopen) {
                        setState(() {
                          kutuAcikMi = !isopen;
                        });
                      },
                      children: [
                        ExpansionPanel(
                          canTapOnHeader: true,
                          backgroundColor: Colors.black,
                          headerBuilder: ((context, isExpanded) {
                            return Text(
                              'Üyelik Sözleşmesi',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            );
                          }),
                          body: Text(
                            'Kaydolarak kullanıcı sözleşmesini kabul etmiş sayılırsınız. ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 184, 186, 188),
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          ),
                          isExpanded: kutuAcikMi,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          width: 200,
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              onayAl_android();
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 3, 173, 9),
                              padding: EdgeInsets.all(10),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                            ),
                            child: Center(child: Text('Kaydol')),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
          ])
        ]),
      );
}
