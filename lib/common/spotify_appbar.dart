import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class spotifyappbar extends StatelessWidget {
  const spotifyappbar({super.key});

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

  Widget appbar(BuildContext context, String device) {
    if (device == "mobile" || device == "tablet") {
      //tablet ve mobil için appbar görünümü burda ayarlandı.
      return Padding(
        padding: const EdgeInsets.all(13.0),
        child: Row(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, //iki row arasına boşluk bırakır
          children: [
            Text(
              'İyi Günler',
              style: Theme.of(context).textTheme.headline6, //text boyutlandırma
            ),
            Row(
              children: [
                const Icon(Icons.notifications_none_outlined),
                SizedBox(
                  width: 11.0,
                ),
                const Icon(Icons.access_time_outlined),
                SizedBox(
                  width: 11.0,
                ),
                const Icon(Icons.settings_outlined),
                SizedBox(
                  width: 11.0,
                ),
              ],
            )
          ],
        ),
      );
    } else if (device == "desktop" || device == "large") {
      //desktop görünümü için düzleneme
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Odaklan',
            style: Theme.of(context).textTheme.headline6,
          ),
          Row(
            //kaydol kısmı
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Text(
                      'Kaydol',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                //oturum aç kutusu
                width: 145,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Oturum aç',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      );
    } else {
      return Text('LARGE');
    }
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var device = ekranBoyutu(screenWidth);
    return Container(
      width: double.infinity,
      color: Colors.black,
      height: 60,
      child: appbar(context, device),
    );
  }
}
