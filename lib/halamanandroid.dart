import 'package:flutter/material.dart';
class HalamanAndroid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      
      Text('Halaman Android'),
      RaisedButton(onPressed: (){
        Navigator.pop(context);
      },child: Text('back'),)
    ],
      ),),
    );
  }
}
