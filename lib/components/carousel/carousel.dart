import 'package:flutter/material.dart';
import 'carousel_tile.dart';

class Carousel extends StatefulWidget {
  List<dynamic>? noticias;
  Carousel({Key? key, this.noticias }) : super(key: key );
  
  @override
  State<Carousel> createState() => _Carousel(noticias: noticias );
}

class _Carousel extends State<Carousel> {
  final _controller = PageController(initialPage: 0);
  
  List<dynamic>? noticias;
  _Carousel({ this.noticias }) {
    print(noticias);
  }

  @override
  void dispose() {
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Expanded(
          child: PageView.builder(
            controller: _controller,
            itemCount: noticias?.length,
            itemBuilder: (_, index) {
              return CarouselTile(
                categoryTitle: 'noticias?[index]?.title',
                newsTitle: 'Título Notícia',
                description: 'noticias?[index]?.description',
                image: 'https://static01.nyt.com/images/2022/06/18/us/18virus-briefing-cdc-1/18virus-briefing-cdc-1-facebookJumbo.jpg',
              );
            },
          ),
        ),
      ],
    ));
  }
}
