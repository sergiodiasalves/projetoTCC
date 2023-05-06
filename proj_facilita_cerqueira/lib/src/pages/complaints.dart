import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/src/widgets/app_bar_custom.dart';
import 'package:proj_facilita_cerqueira/src/widgets/lateral_menu.dart';

class ComplaintsPage extends StatefulWidget {
  const ComplaintsPage({Key? key}) : super(key: key);

  @override
  _ComplaintsPageState createState() => _ComplaintsPageState();
}

class _ComplaintsPageState extends State<ComplaintsPage> {
  final dropValue = ValueNotifier('');
  final dropOpcoes = ['Saúde', 'Educação', 'Esporte', 'Cultura', 'Meio Ambiente', 'Infra-Estrutura'];

  DateTime _data = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: const LateralMenuPage(),
        appBar: const AppBarCustom(
          title: Text('Denúncias'),
        ),
        body: Container(
            color: Colors.green.shade100,
            child: Column(children: <Widget>[
              Expanded(
                  child: SingleChildScrollView(
                      child: Column(children: [
                Container(
                  height: 15,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                  padding: const EdgeInsets.all(5),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      Text('Data :',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child:
                         Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Expanded(
                              flex: 10,
                               child: Center(
                                 child: Text(formatDate(_data, [dd, '-', mm, '-', yyyy]),
                                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: Colors.black)),
                               ),
                             ),
                              
                                   const Expanded(
                                    flex:1,
                                     child: Icon(Icons.calendar_today_outlined, color: Colors.blue
                                                         ),
                                   ),
                           ],
                         ),
                     
                      style: TextButton.styleFrom(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        backgroundColor: Colors.white,
                      ),
                      onPressed: () async {
                        final dtPick = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1900),
                            lastDate: DateTime(2100));

                        if (dtPick != null && dtPick != _data) {
                          setState(() {
                            _data = dtPick;
                          });
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      Text('Tipo :',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: ValueListenableBuilder(
                        valueListenable: dropValue,
                        builder: (BuildContext context, String value, _) {
                          return SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: DropdownButtonFormField<String>(
                              isExpanded: true,
                              icon: const Icon(Icons.arrow_downward_rounded),
                              hint: const Center(
                                child: Text('Escolha o Tipo',
                                    textAlign: TextAlign.center,
                                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black54)),
                              ),
                              decoration: const InputDecoration(
                                focusedBorder: InputBorder.none,
                                enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide.none),
                                filled: true,
                                fillColor: Colors.white,
                              ),
                              value: (value.isEmpty) ? null : value,
                              onChanged: (escolha) =>
                                  dropValue.value = escolha.toString(),
                              items: dropOpcoes
                                  .map((op) => DropdownMenuItem(
                                        value: op,
                                        child: Text(op,  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black54)),
                                      ))
                                  .toList(),
                            ),
                          );
                        })),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      Text('Titulo :',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black54),
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    children: [
                      Text('Descrição :',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ))
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextField(
                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300, color: Colors.black54),
                    keyboardType: TextInputType.multiline,
                    maxLines: 7,
                    decoration: InputDecoration(
                      focusedBorder: InputBorder.none,
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      
                    },
                    child: const Text('Enviar Denúncia',  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black54))),
                const SizedBox(
                  height: 20,
                ),
              ]))),
            ])),
        bottomSheet: Container(
          height: 15,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(color: Colors.grey.shade400),
          padding: const EdgeInsets.all(5),
        ));
  }
}
