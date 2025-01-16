import 'package:flutter/material.dart';

class ContactsScreen extends StatelessWidget {
  ContactsScreen({Key? key}) : super(key: key);
  
  final contactos = [
    "mescudern@iesch.org",
    "arodriguezg@iesch.org"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Contactos',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
        itemBuilder:
            (context, index) => ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text(contactos[index]),
              onTap: () {
                
              },
            ),
        separatorBuilder: (context, index) => Divider(),
        itemCount: contactos.length,
      ),
    );
  }
}
