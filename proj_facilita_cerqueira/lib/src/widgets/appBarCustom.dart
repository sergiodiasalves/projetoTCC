// ignore_for_file: file_names, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final Text title;
  final double barHeight = 50.0;

  AppBarCustom({Key? key, required this.title}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        titleTextStyle: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: Colors.white70,
        ),
        centerTitle: true,
        title: title,
        backgroundColor: (Colors.blue.shade600),
        iconTheme: const IconThemeData(color: Colors.white70, size: 32),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 4.0, 8.0),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();

                  Navigator.pushNamed(context, '/Home');
                },
                child: const Icon(Icons.home_outlined),
              )),
          Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 8.0, 16.0, 8.0),
              child: InkWell(
                onTap: () {
                  print('sair');
                  FlutterExitApp.exitApp(iosForceExit: true);
                },
                child: const Icon(Icons.exit_to_app),
              )),
        ]);
  }
}
