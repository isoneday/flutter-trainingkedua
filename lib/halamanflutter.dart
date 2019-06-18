import 'package:basic_flutter_kedua/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HalamanFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 60,
        judul: 'flutter',
        warna: Colors.red,
      ),
      body: CardPage(),
    );
  }
}

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
              children: <Widget>[
                MyCard(ikon: FontAwesomeIcons.apple,nama: 'oreo',warna: Colors.cyan,),
                MyCard(ikon: FontAwesomeIcons.docker,nama: 'nuget',warna: Colors.red,),
                MyCard(ikon: FontAwesomeIcons.opera,nama: 'jelly bean',warna: Colors.green,),
                MyCard(ikon: FontAwesomeIcons.opera,nama: 'jelly bean',warna: Colors.red,),
              
              ],
            ),
          ),
          Expanded(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: <Widget>[
                MyCard(ikon: FontAwesomeIcons.apple,nama: 'oreo',warna: Colors.cyan,),
                MyCard(ikon: FontAwesomeIcons.docker,nama: 'nuget',warna: Colors.red,),
                MyCard(ikon: FontAwesomeIcons.opera,nama: 'jelly bean',warna: Colors.green,),
                MyCard(ikon: FontAwesomeIcons.opera,nama: 'jelly bean',warna: Colors.red,),
              
              ],
            ),
          ),

          // Expanded(
          //   child: Column(
          //     children: <Widget>[
          //       Card(
          //         child: Column(
          //           children: <Widget>[
          //             Icon(
          //               FontAwesomeIcons.apple,
          //               size: 50,
          //               color: Colors.indigo,
          //             ),
          //             Text(
          //               'oreo',
          //               style: TextStyle(fontSize: 20),
          //             )
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}

class MyCard extends StatelessWidget {
  final String nama;
  final IconData ikon;
  final Color warna;

  const MyCard(
      {Key key,
      @required this.nama,
      @required this.ikon,
      @required this.warna})
      : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
        elevation: 10,
        
        color: warna,
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          
          children: <Widget>[
                  Icon(
                    ikon,
                    size: 50,
                    color: Colors.indigo,
                  ),
                  Center(
                    child: Text(
                      nama,
                      style: TextStyle(fontSize: 20),
                    ),
                  )
                ],
              ),
            ),
    );
  }
}
