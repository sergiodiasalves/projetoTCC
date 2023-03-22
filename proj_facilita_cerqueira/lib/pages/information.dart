// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/pages/lateralMenu.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LateralMenuPage(),
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
