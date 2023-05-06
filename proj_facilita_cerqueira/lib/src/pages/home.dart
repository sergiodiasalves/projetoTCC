import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/src/widgets/app_bar_custom.dart';
import 'package:proj_facilita_cerqueira/src/widgets/lateral_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const LateralMenuPage(),
        appBar: const AppBarCustom(
          title: Text('Facilita Cerqueira'),
        ),
        backgroundColor: Colors.blue.shade200,
        body: Container(
          padding: const EdgeInsets.fromLTRB(50, 2, 50, 2),
          child: GridView.count(
            childAspectRatio: (.8 / .5),
            crossAxisCount: 1,
            children: const <Widget>[
              MyMenu(
                  title: 'Informações',
                  icon: Icons.info_outline,
                  warna: Colors.blue),
              MyMenu(
                  title: 'Denúncias',
                  icon: Icons.speaker_notes_outlined,
                  warna: Colors.blue),                           
              MyMenu(
                  title: 'Notícias',
                  icon: Icons.article_outlined,
                  warna: Colors.blue),
            ],
          ),
        ),
        bottomSheet: Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade400),
          padding: const EdgeInsets.all(5),
        ));
  }
}

class MyMenu extends StatelessWidget {
  const MyMenu({Key? key, this.title, this.icon, this.warna}) : super(key: key);

  final String? title;
  final IconData? icon;
  final MaterialColor? warna;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          if (title == 'Informações') {
            Navigator.pushNamed(context, '/Information');
          }
          if (title == 'Denúncias') {
            Navigator.pushNamed(context, '/Complaints');
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
              Text(title ?? '', style: const TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold,))
            ],
          ),
        ),
      ),
    );
  }
}
