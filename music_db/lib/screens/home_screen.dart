import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:music_db/provider/disks_provider.dart';
import 'package:music_db/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final disksProvider = Provider.of<DisksProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Discos', style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          MyCardSwiper(disks: disksProvider.listaDiscos)
        ]
      ),
    );
  }
}
