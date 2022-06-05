import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'carousel_tile.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
            child: PageView.builder(
                itemCount: 3,
                itemBuilder: (_, currentIndex) {
                  return CarouselTile();
                }))
      ],
    ));
  }
}
