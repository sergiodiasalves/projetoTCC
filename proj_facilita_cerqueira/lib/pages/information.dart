// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

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
        body: ListView(
          children: <Widget>[
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(5),
              child: const Center(
                child: Text('Telefone uteis',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: (Row(children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text('Prefeitura :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text('(99) 1234-1234',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ])),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: (Row(children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text('Vigilância Sanitária :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text('(99) 1234-1234',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ])),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: (Row(children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text('Vigilância Epidemiológica :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text('(99) 1234-1234',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ])),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: (Row(children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text('Santa Casa :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text('(99) 1234-1234',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ])),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: (Row(children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text('Posto de Saúde :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text('(99) 1234-1234',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ])),
            ),
            Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: (Row(children: <Widget>[
                SizedBox(
                  height: 30,
                  child: Text('Delegacia :',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.black87,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                      child: Text('(99) 1234-1234',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
              ])),
            ),
            Container(
              height: 45,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.grey.shade400),
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.all(5),
              child: const Center(
                child: Text('Endereços uteis',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                contentPadding:
                    EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                title: Text("Prefeitura :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle:
                    Text("abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                contentPadding:
                    EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                title: Text("Vigilância Sanitária :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle:
                    Text("abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                contentPadding:
                    EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                title: Text("Vigilância Epidemiológica :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle:
                    Text("abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                contentPadding:
                    EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                title: Text("Santa Casa :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle:
                    Text("abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                contentPadding:
                    EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                title: Text("Posto de Saúde :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle:
                    Text("abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
              ),
            ),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.green.shade100),
              padding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
              child: ListTile(
                dense: true,
                visualDensity: VisualDensity(horizontal: 0, vertical: -4),
                contentPadding:
                    EdgeInsets.only(left: 0.0, right: 0.0, top: 0.0),
                title: Text("Delegacia :",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    )),
                subtitle:
                    Text("abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
              ),
            ),
          ],
        ),
        bottomSheet: Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade400),
          padding: EdgeInsets.all(5),
        ));
  }
}
