

import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/src/widgets/appBarCustom.dart';
import 'package:proj_facilita_cerqueira/src/widgets/lateralMenu.dart';

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const LateralMenuPage(),
        appBar: AppBarCustom(
          title: const Text('Mapa da Cidade'),
        ),
        backgroundColor: Colors.blue.shade200,
        body: Container()
        );
  }
}