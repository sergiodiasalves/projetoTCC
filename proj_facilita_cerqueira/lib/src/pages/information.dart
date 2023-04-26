// ignore_for_file: prefer_const_constructors, avoid_print, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, non_constant_identifier_names, prefer_const_constructors_in_immutables

import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:proj_facilita_cerqueira/src/widgets/appBarCustom.dart';
import 'package:proj_facilita_cerqueira/src/widgets/lateralMenu.dart';
import 'package:http/http.dart' as http;

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  List<dynamic> population = [];

  @override
  void initState() {
    super.initState();
    popula();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: LateralMenuPage(),
        appBar: AppBarCustom(
          title: Text('Informações'),
        ),
        body: SafeArea(
          child: Container(
            child: ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: <Widget>[
                Container(
                  height: 40,
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
                Column(
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(color: Colors.green.shade100),
                      padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                      child: (Row(children: <Widget>[
                        SizedBox(
                          height: 30,
                          child: Text('Prefeitura :',
                              textAlign: TextAlign.start,
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
                              textAlign: TextAlign.end,
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              )),
                        )),
                      ])),
                    ),
                  ],
                ),
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green.shade50),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: (Row(children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Text(
                          "abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
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
                          textAlign: TextAlign.start,
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
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
                  ])),
                ),
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green.shade50),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: (Row(children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Text(
                          "abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
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
                          textAlign: TextAlign.start,
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
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
                  ])),
                ),
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green.shade50),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: (Row(children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Text(
                          "abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
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
                          textAlign: TextAlign.start,
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
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
                  ])),
                ),
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green.shade50),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: (Row(children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Text(
                          "abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
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
                          textAlign: TextAlign.start,
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
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
                  ])),
                ),
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green.shade50),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: (Row(children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Text(
                          "abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
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
                          textAlign: TextAlign.start,
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
                          textAlign: TextAlign.end,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ))
                  ])),
                ),
                Container(
                  height: 25,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.green.shade50),
                  padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: (Row(children: <Widget>[
                    SizedBox(
                      height: 20,
                      child: Text(
                          "abc abc abc abc abc abc abc abc abc abc abc abc abc ",
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          )),
                    ),
                  ])),
                ),
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.all(5),
                  child: SizedBox(
                    child: const Center(
                      child: Text('Dados do Mnunicipio',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          )),
                    ),
                  ),
                ),
                Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.green.shade100),
                    padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                    child: (Row(children: <Widget>[
                      SizedBox(
                        height: 30,
                        child: Text("Cosumir dados API IBGE",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              color: Colors.black87,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            )),
                      ),
                    ]))),
                Container(
                    height: 48,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.green.shade50),
                    
                    child: Column(
                   
                        children: [
                          (ListView.builder(
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: population.length,
                              itemBuilder: (context, index) {
                                final item = population[index];
                                final resultados = item['series'][0]['serie'];
                                return ListTile(
                                    title: Text(
                                        "A população estimada do municipio em 2021 foi de " +
                                            resultados['2021'].toString() +
                                            " habitantes.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.black87,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        )));
                              }))
                        ])),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade400),
          padding: EdgeInsets.all(5),
        ));
  }

  Future<void> popula() async {
    const url =
        'https://servicodados.ibge.gov.br/api/v3/agregados/6579/periodos/2021/variaveis/9324?localidades=N6[3511409]';
    final uri = Uri.parse(url);
    final response = await http.get(uri);
    final body = response.body;
    final json = jsonDecode(body);
    final cCesar = json[0];
   

    setState(() {
      population = cCesar['resultados'];
    });
  }
}
