// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
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
