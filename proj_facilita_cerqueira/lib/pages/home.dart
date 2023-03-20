// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Image.asset(
                'assets/images/Bandeira_CC.png',
              ),
              accountName: Text(
                'Facilita Cerqueira',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
              accountEmail: null,
            ),
            ListTile(
              leading: Icon(
                Icons.house_outlined,
                color: Colors.blue,
              ),
              title: Text('Informações'),
              onTap: () => print('Clicou'),
            ),
            ListTile(
              leading: Icon(
                Icons.speaker_notes_outlined,
                color: Colors.blue,
              ),
              title: Text('Denúncias'),
              onTap: () => print('Clicou'),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Informações',
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.w500,
            color: Colors.white70,
          ),
        ),
        backgroundColor: (Colors.blue.shade600),
      ),
      body: Stack(children: <Widget>[
        Container(),
      ]),
    );
  }
}
