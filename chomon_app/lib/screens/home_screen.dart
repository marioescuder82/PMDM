import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final opciones = const ['Calendario', 'Mis Asignaturas', 'Contactos'];
  final iconos = const [Icons.calendar_month, Icons.subject_rounded, Icons.contact_page_rounded];

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mis curso',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(
                iconos[index],
                color: Colors.indigo
              ),
              title: Text(opciones[index]),
              onTap: () {
                if (index == 0) {
                  Navigator.pushNamed(context, 'calendar');
                } else if (index == 1) {
                  Navigator.pushNamed(context, 'courses');
                }
                else {
                   Navigator.pushNamed(context, 'contacts');
                }
              },
            ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: opciones.length,
      ),
    );
  }
}
