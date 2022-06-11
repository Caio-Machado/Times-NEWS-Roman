import 'package:flutter/material.dart';

import '/templates/generic_templates.dart';
import 'list_news.dart';

class CategoryNews extends StatelessWidget {
  String categoryTitle = '';
  List<Map<String, dynamic>> news = [
    {
      'titulo': 'Panorama de hidrocarburos y electricidad de Brasil: Saesa, EDP, Neoenergía y otras - BNamericas',
      'imagem': 'https://www.bnamericas.com/assets/img/opengraphbna.jpg',
    },
  ];

  CategoryNews({Key? key, this.categoryTitle = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryHeader(
            title: categoryTitle,
          ),
          ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: news.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return Container(
                child: NewsTile(
                  title: news[index]['title'],
                  image: news[index]['image'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
