// ignore_for_file: prefer_const_constructors, avoid_print, unnecessary_new, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

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
      backgroundColor: Colors.blue.shade200,
      body: Container(
        padding: EdgeInsets.all(30.0),
        child: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            MyMenu(
                title: 'Informação',
                icon: Icons.info_outline,
                warna: Colors.blue),
            MyMenu(
                title: 'Denúncias',
                icon: Icons.speaker_notes_outlined,
                warna: Colors.blue),
            MyMenu(title: 'Falta1', icon: Icons.bug_report, warna: Colors.red),
            MyMenu(title: 'Falta2', icon: Icons.bug_report, warna: Colors.red),
            MyMenu(title: 'Falta3', icon: Icons.bug_report, warna: Colors.red),
            MyMenu(title: 'Notícias', icon: Icons.article_outlined,warna: Colors.blue),
          ],
        ),
      ),
      bottomSheet: Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade400),
          padding: const EdgeInsets.all(5),
        )
    );
        
  }
}

class MyMenu extends StatelessWidget {
  MyMenu({this.title, this.icon, this.warna});

  final String? title;
  final IconData? icon;
  final MaterialColor? warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (title == 'Informação') {
              Navigator.pushNamed(context, '/Information');
            }
            if (title == 'Denúncias') {
              Navigator.pushNamed(context, '/Complaints');
            }
            if (title == 'Falta1') {
              Navigator.pushNamed(context, '/Home');
            }
            if (title == 'Falta2') {
              Navigator.pushNamed(context, '/Home');
            }
            if (title == 'Falta3') {
              Navigator.pushNamed(context, '/Home');
            }
            if (title == 'Notícias') {
              Navigator.pushNamed(context, '/News');
            }
        },
        splashColor: Colors.blue.shade600,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(
                icon,
                size: 70.0,
                color: warna,
              ),
              Text(title ?? '', style: new TextStyle(fontSize: 17.0))
            ],
          ),
        ),
      ),
    );
  }
}
