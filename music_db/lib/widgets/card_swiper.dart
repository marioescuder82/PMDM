import 'package:flutter_card_swiper/flutter_card_swiper.dart';

import 'package:flutter/material.dart';
import 'package:music_db/models/disk_response.dart';

class MyCardSwiper extends StatelessWidget {
  final List<DiskResponse> disks;

  MyCardSwiper({super.key, required this.disks});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    List<GestureDetector> cards =
        disks
            .map(
              (disk) => GestureDetector(
                onTap:
                    () =>
                        Navigator.pushNamed(context, 'details', arguments: disk),
                child: FadeInImage(
                  placeholder: NetworkImage('https://placehold.com/300'),
                  image: NetworkImage(disk.strAlbumThumb ?? 'https://placehold.com/300'),
                  fit: BoxFit.cover,
                ),
              ),
            )
            .toList();

    /*
    List<GestureDetector> cards = [
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'details', arguments: '?'),
        child: Container(alignment: Alignment.center, color: Colors.blue),
      ),
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'details', arguments: '?'),
        child: Container(alignment: Alignment.center, color: Colors.yellow),
      ),
      GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'details', arguments: '?'),
        child: Container(alignment: Alignment.center, color: Colors.green),
      ),
    ];
    */

    return Container(
      width: double.infinity,
      height: size.height * 0.5,
      child: CardSwiper(
        cardsCount: cards.length,
        cardBuilder:
            (context, index, percentThresholdX, percentThresholdY) =>
                cards[index],
      ),
    );
  }
}
