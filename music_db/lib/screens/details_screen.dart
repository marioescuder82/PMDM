import 'package:flutter/material.dart';
import 'package:music_db/models/disk_response.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final DiskResponse disk =
        ModalRoute.of(context)!.settings.arguments as DiskResponse;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Detalles del disco',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.search_outlined, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(child: Text(disk.strDescriptionEn ?? 'Description not available')),
    );
  }
}
