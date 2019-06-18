import 'package:basic_flutter_kedua/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HalamanMakanan extends StatelessWidget {
  final dataMakanan = ['Ayam goreng', 'rendang', 'sate', 'opor ayam'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 60,
        judul: 'makanan',
        warna: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: dataMakanan.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              onTap: () {
                Scaffold.of(context).showSnackBar(SnackBar(
                  content: Text(dataMakanan[index]),
                ));
              },
              trailing: Icon(Icons.restaurant),
              title: Text(dataMakanan[index]),
            ),
          );
        },
      ),
    );
  }
}
