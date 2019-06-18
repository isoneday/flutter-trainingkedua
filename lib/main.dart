import 'package:basic_flutter_kedua/halamanandroid.dart';
import 'package:basic_flutter_kedua/halamanflutter.dart';
import 'package:basic_flutter_kedua/halamanios.dart';
import 'package:basic_flutter_kedua/halamaniosmakanan.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'latihan2whatsapp/pages/splashscreen.dart';

void main() => runApp(HalamanSplash());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'training hari kedua',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          height: 60,
          judul: 'halaman utama',
          warna: Colors.grey,
        ),
        body: HalamanUI());
  }
}

class HalamanUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: <Widget>[
            Image.network(
              'https://i.pinimg.com/originals/4b/e7/13/4be713c84532b15a4fdbcbd26c086a00.gif',
              fit: BoxFit.fill,
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text('Training Flutter,18 Juni 2019'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    print('andi');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanAndroid()));
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.android),
                      Text(
                        'Android',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HalamanFlutter()));
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.flash_on,
                        color: Colors.blueAccent,
                      ),
                      Text(
                        'flutter',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HalamanIOS()));
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.apple),
                      Text(
                        'ios',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
                 GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HalamanMakanan()));
                  },
                  child: Column(
                    children: <Widget>[
                      Icon(Icons.restaurant),
                      Text(
                        'makanan',
                        style: TextStyle(fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.only(bottom: 8.0),
                          child: Text(
                            'Jalan Menteng',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          'Jakarta Pusat,Indonesia',
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  Text('100')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

//tambahkan implement untuk membuat appbar secara terpisah dengan widget Homepage
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  //deklarasi variable yang akan dijadikan sbg parameter
  final double height;
  final Color warna;
  final String judul;
  //constructor untuk mengirim nilai dari homepage ke customappbar
  const CustomAppBar(
      {Key key,
      @required this.height,
      @required this.judul,
      @required this.warna})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(judul),
      elevation: 30.0,
      centerTitle: true,
      leading: Icon(Icons.access_alarm),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            print('sedang mencari');
          },
        )
      ],
      backgroundColor: warna,
    );
  }

  @override
  // TODO: implement preferredSize
  //untuk memberi batasan tinggi dari appbar
  Size get preferredSize => Size.fromHeight(height);
}
