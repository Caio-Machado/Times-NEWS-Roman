import 'package:flutter/material.dart';
import 'carousel_tile.dart';

class Carousel extends StatefulWidget {
  List<dynamic>? noticias;

  Carousel({Key? key, this.noticias }) : super(key: key);
  
  @override
  State<Carousel> createState() => _Carousel(noticias);
}

class _Carousel extends State<Carousel> {
  final _controller = PageController(initialPage: 0);

  List<dynamic>? noticias;
  _Carousel(this.noticias);

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
                categoryTitle: noticias?[index]?.title,
                newsTitle: noticias?[index]?.title,
                description: noticias?[index]?.description,
                image: noticias?[index]?.image,
              );
            },
          ),
        ),
      ],
    ));
  }
}
