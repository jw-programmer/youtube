import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Incricao.dart';
import 'package:youtube/telas/Inicio.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceBottonAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      Inscricao(),
      EmAlta(),
      Biblioteca()
    ];
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
      body: telas[_indiceBottonAtual],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indiceBottonAtual,
        onTap: (indice) {
          setState(() {
            _indiceBottonAtual = indice;
          });
        },
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.red,
        items: [
          BottomNavigationBarItem(
              title: Text("Inicio"), icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              title: Text("Em alta"), icon: Icon(Icons.whatshot)),
          BottomNavigationBarItem(
              title: Text("Inscrições"),
//              backgroundColor: Colors.blue,
              icon: Icon(Icons.subscriptions)),
          BottomNavigationBarItem(
              title: Text("Biblioteca"),
//              backgroundColor: Colors.green,
              icon: Icon(Icons.folder)),
        ],
      ),
    );
  }
}
