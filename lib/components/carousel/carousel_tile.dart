import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/carousel/info_box.dart';
import 'package:timesnewsroman/components/carousel/navigation.dart';

import '../template/generic_templates.dart';

class CarouselTile extends StatelessWidget {
  var categoryTitle = '';
  var newsTitle = '';
  var description = '';
  var image = '';

  CarouselTile({Key? key, this.categoryTitle = '', this.newsTitle = '', this.description = '', this.image = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(13),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(1),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        image: DecorationImage(
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.65), BlendMode.darken),
          image: NetworkImage(image),
          fit: BoxFit.cover,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CategoryHeader(title: categoryTitle),
            Navigation(),
            InfoBox(
              title: newsTitle,
              description: description,
            ),
          ],
        ),
      ),
    );
  }
}



