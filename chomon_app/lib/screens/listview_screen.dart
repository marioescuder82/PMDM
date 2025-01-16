import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  final asignaturas = const ['PMDM', 'DAW', 'LM'];

  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ListView tipo 1')),
      body: ListView(
        children: [
          ...asignaturas.map(
            (e) => ListTile(
              leading: Icon(Icons.account_circle),
              title: Text(e),
              trailing: const Icon(Icons.arrow_right),
              tileColor: Colors.blue,
            )
          )         
        ],
      ),
    );
  }
}
