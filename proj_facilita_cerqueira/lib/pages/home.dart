// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proj_facilita_cerqueira/pages/lateralMenu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LateralMenuPage(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Facilita Cerqueira',
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
