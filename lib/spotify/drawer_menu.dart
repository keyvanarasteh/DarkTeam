import 'package:flutter/material.dart';

class SpotifyDrawer extends StatelessWidget {
  const SpotifyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      color: Colors.black,
      child: ListView(children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
                children: [
                  Image.asset('assets/images/logo.png' ,width:130, height: 80),
                  
                ],
                ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.home),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('Ana Sayfa'),
                )
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.search_outlined),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('Ara'),
                )
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(
                  Icons.library_books_outlined,
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('Kitaplığın'),
                ),
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.add),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Çalma Listesi Oluştur',
                    style: TextStyle(fontSize: 12.8),
                  ),
                )
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Icon(Icons.favorite),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text('Beğenilen Şarkılar'),
                )
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 120, left: 20),
            child: Row(
              children: [
                Text(
                  'Çerezler ',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 10, left: 20),
            child: Row(
              children: [
                Text(
                  'Gizlilik ',
                  style: TextStyle(fontSize: 11, color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
