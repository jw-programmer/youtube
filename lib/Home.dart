import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset(
          "imagens/youtube.png",
          width: 98,
          height: 22,
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.videocam),
              onPressed: () {
                print("Ação videocam");
              }),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("Pesquisa");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("Conta");
            },
          )
        ],
      ),
      body: Container(),
    );
  }
}
