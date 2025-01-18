import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:http/http.dart' as http;
import 'package:prueba_1/models/disk_response.dart';

class DisksProvider extends ChangeNotifier {
  final String _baseUrl = 'theaudiodb.com';
  final String _artistId = '112025';

  List<DiskResponse> listaDiscos = [];

  DisksProvider() {
    print('DiskProvider inicializado');

    getDisks();
  }

  getDisks() async {
    var url = Uri.https(_baseUrl, '/api/v1/json/2/album.php', {'i': _artistId});

    var response = await http.get(url).timeout(Duration(seconds: 30));
    final decodedData = json.decode(response.body) as Map<String, dynamic>;

    listaDiscos =
        (decodedData['album'] as List)
            .map((disk) => DiskResponse.fromJson(disk))
            .toList();

    notifyListeners();

    //listaDiscos.forEach((disk) => print(disk.strAlbumThumb));
  }
}
