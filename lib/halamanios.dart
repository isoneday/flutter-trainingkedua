import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HalamanIOS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        ListTile(
            onTap: () {
              
            },
            title: Text('iphone7'),
            trailing: Icon(
              FontAwesomeIcons.apple,
            )),
        ListTile(
            onTap: () {},
            title: Text('iphone8'),
            trailing: Icon(
              FontAwesomeIcons.applePay,
            )),
        ListTile(
            onTap: () {},
            title: Text('iphone max'),
            trailing: Icon(
              FontAwesomeIcons.appleAlt,
            )),
        ListTile(
            onTap: () {},
            title: Text('iphone'),
            trailing: Icon(
              FontAwesomeIcons.apple,
            ))
      ],
    ),
    );
  }
}
