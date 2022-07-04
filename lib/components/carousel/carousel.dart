import 'package:flutter/material.dart';
import 'carousel_tile.dart';

class Carousel extends StatefulWidget {
  List<dynamic>? noticias;

  Carousel({Key? key, this.noticias}) : super(key: key);

  @override
  State<Carousel> createState() => _Carousel(noticias);
}

class _Carousel extends State<Carousel> {
  final _controller = PageController(initialPage: 0);

  final List<String> categorys = [
    "Negócios",
    "Entreterimento",
    "Geral",
    "Saúde",
    "Ciência",
    "Esportes",
    "Tecnologia"
  ];

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
                categoryTitle: categorys[index],
                newsTitle: noticias?[index]?.title,
                description: noticias?[index]?.description,
                image: noticias?[index]?.image,
                url: noticias?[index]?.url,
              );
            },
          ),
        ),
      ],
    ));
  }
}
