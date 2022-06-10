import 'package:flutter/material.dart';
import 'carousel_tile.dart';

class Carousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
            child: PageView.builder(
                itemCount: 7,
                itemBuilder: (_, currentIndex) {
                  return CarouselTile(
                    categoryTitle: 'Título categoria',
                    newsTitle: 'Título Notícia',
                    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    image: 'https://static.politico.com/15/49/549fc7b34126a8195fe9352a58f5/https-delivery.gettyimages.com/downloads/1237661675',
                  );
                }))
      ],
    ));
  }
}
