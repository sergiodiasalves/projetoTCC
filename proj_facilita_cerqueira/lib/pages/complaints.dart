// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/pages/lateralMenu.dart';

class ComplaintsPage extends StatefulWidget {
  const ComplaintsPage({Key? key}) : super(key: key);

  @override
  _ComplaintsPageState createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: LateralMenuPage(),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Denúncia',
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
