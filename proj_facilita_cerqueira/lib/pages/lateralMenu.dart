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
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: null,
                          
            
            accountName: Center(
              child: Text(
                'F a c i l i t a C e r q u e i r a',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w900, color: Colors.black87 ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage('assets/images/Bandeira_CC.png'),
            fit: BoxFit.cover),),
            accountEmail: null,
          ),
          ListTile(
              leading: Icon(
                Icons.home_outlined,
                color: Colors.blue,
              ),
              title: Text('Pagina Princiapl'),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.pushNamed(context, '/Home');
              }),
          ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.blue,
              ),
              title: Text('Informações'),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.pushNamed(context, '/Information');
              }),
          ListTile(
              leading: Icon(
                Icons.speaker_notes_outlined,
                color: Colors.blue,
              ),
              title: Text('Denúncias'),
              onTap: () {
                Navigator.of(context).pop();

                Navigator.pushNamed(context, '/Complaints');
              }),
              Divider(),
              ListTile(
              leading: Icon(
                Icons.exit_to_app,
                color: Colors.blue,
              ),
              title: Text('Sair'),
              onTap: () {
                
              }),
        ],
      ),
    );
  }
}
