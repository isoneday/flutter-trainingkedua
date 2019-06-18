import 'package:flutter/material.dart';

class HalamanSplash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'whatsapp',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
with SingleTickerProviderStateMixin {
  TabController mycontroller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        backgroundColor: Colors.green,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: mycontroller,
          tabs: <Widget>[
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text('CHATS'),
            ),
            Tab(
              child: Text('STATUS'),
            ),
            Tab(
              child: Text('CALLS'),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: mycontroller,
        children: <Widget>[
          Icon(Icons.camera_alt),
          Text('chats'),
          Text('status'),
          Text('calls'),
        ],
      ),
    );
  }
  //method yg pertama x dijalankan ,untuk inisialisasi
  @override
  void initState() {
    // TODO: implement initState
    mycontroller =TabController(vsync: this,length:4);
    super.initState();
  }
}
