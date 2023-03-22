// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class LateralMenuPage extends StatefulWidget {
  const LateralMenuPage({Key? key}) : super(key: key);

  @override
  _LateralMenuPageState createState() => _LateralMenuPageState();
}

class _LateralMenuPageState extends State<LateralMenuPage> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.cyan.shade100,
        child: Column(
          children: [
            DrawerHeader(
              child: Center(
                child: Image.asset('assets/images/Bandeira_CC.png'),
              ),
            ),
            ListTile(
                leading: Icon(
                  Icons.home_outlined,
                  color: Colors.lightBlue.shade600,
                ),
                title: Text(
                  'Pagina Principal',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.lightBlue.shade700,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.pushNamed(context, '/Home');
                }),
            ListTile(
                leading: Icon(
                  Icons.info_outline,
                  color: Colors.lightBlue.shade600,
                ),
                title: Text(
                  'Informações',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.lightBlue.shade700,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.pushNamed(context, '/Information');
                }),
            ListTile(
                leading: Icon(
                  Icons.speaker_notes_outlined,
                  color: Colors.lightBlue.shade600,
                ),
                title: Text(
                  'Denúncias',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.lightBlue.shade700,
                  ),
                ),
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.pushNamed(context, '/Complaints');
                }),
            Divider(),
            ListTile(
                leading: Icon(
                  Icons.exit_to_app,
                  color: Colors.lightBlue.shade600,
                ),
                title: Text(
                  'Sair',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.lightBlue.shade700,
                  ),
                ),
                onTap: () {}),
          ],
        ),
      ),
    );
  }
}
