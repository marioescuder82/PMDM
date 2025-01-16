import 'package:flutter/material.dart';

class PmdmScreen extends StatelessWidget {
  const PmdmScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PMDM',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            CardPmdm(texto: "Sección 1"),
            CardPmdm(texto: "Sección 2"),
            CardPmdm(texto: "Sección 3"),
            CardPmdm(texto: "Sección 4"),
          ],
        ),
      ),
    );
  }
}

class CardPmdm extends StatelessWidget {
  final String texto;

  const CardPmdm({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(texto),
        subtitle: Text(
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris aliquam leo quis venenatis faucibus. Curabitur libero nisl, vulputate at hendrerit quis, ultrices eu mi. Nam a justo nec ante auctor eleifend. Proin erat libero, tincidunt nec justo eu, sollicitudin feugiat diam. Suspendisse suscipit lorem vel turpis vehicula, sit amet bibendum.',
        ),
      ),
    );
  }
}
