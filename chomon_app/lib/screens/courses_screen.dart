import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  final asignaturas = const ['PMDM', 'DAW', 'LM'];  

  const Courses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mis asignaturas',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.apps_rounded, color: Colors.indigo),
              title: Text(asignaturas[index]),
              trailing: const Icon(Icons.arrow_right, color: Colors.indigo),
              onTap: () {
                if (index == 0) {
                  Navigator.pushNamed(context, 'pmdm');
                } else if (index == 1) {
                  Navigator.pushNamed(context, 'aw');
                }
                else {
                   Navigator.pushNamed(context, 'lm');
                }
              },
            ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: asignaturas.length,
      ),
    );
  }
}
