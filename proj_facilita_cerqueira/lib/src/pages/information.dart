import 'package:flutter/material.dart';
import 'package:proj_facilita_cerqueira/data/controllers/information_controller.dart';
import 'package:proj_facilita_cerqueira/src/widgets/app_bar_custom.dart';
import 'package:proj_facilita_cerqueira/src/widgets/lateral_menu.dart';

class InformationPage extends StatefulWidget {
  const InformationPage ({Key? key}) : super(key: key);

  @override
  State<InformationPage> createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final controller = Informationcontroller();

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {});
    });
    controller.list();
  }

  @override
  dispose() {
    super.dispose();
    controller.dispose();
  }

  Widget _showMessageError(String message) {
    return Column(children: [
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'A API respondeu com erro!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Text(controller.messageError),
    ]);
  }

  List<Widget> _showItensOfCategory(String category) {
    return controller.info[category]!.map<Widget>((e) {
      var tile = e.description.length >= 15
          ? SizedBox(
              height: 55,
              child: ListTile(
                title: Text(e.title, style: const TextStyle(fontWeight: FontWeight.bold),),
                subtitle: Text(e.description),
              ),
            )
          : SizedBox(
              height: 40,
              child: ListTile(
                title: Text(e.title, style: const TextStyle(fontWeight: FontWeight.bold),),
                trailing: Text(e.description),
              ),
            );
      return Card(
        shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(0),),
        margin: const EdgeInsets.all(0),
        child: tile,
      );
    }).toList();
  }

  List<Widget> _showCategories() {
    return controller.categories
        .map<Widget>((category) => Column(children: [
              Container(
                   height: 40,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.grey.shade400),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(5),
                child: Center(
                  child: Card(
                    elevation: 0,
                    color: Colors.grey.shade400,
                    child: Text(category,     style: const TextStyle(
                          color: Colors.black87,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        )),
                  ),
                ),
              ),
              Column(
                children: controller.info[category] == null
                    ? []
                    : _showItensOfCategory(category),
              ),
            ]))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       drawer: const LateralMenuPage(),
      appBar: const AppBarCustom(
          title: Text('Informações'),
        ),
      body: Center(
        child: controller.isLoading
            ? const CircularProgressIndicator()
            : controller.messageError.isNotEmpty
                ? _showMessageError(controller.messageError)
                :SingleChildScrollView(child: Container(padding: const EdgeInsets.fromLTRB(10, 8, 10, 20),decoration: BoxDecoration(color: Colors.green.shade200),child: Column(children: _showCategories()))),
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