import 'package:flutter/material.dart';

import 'category_news.dart';

class ListNews extends StatelessWidget {
  String categoryTitle = '';

  ListNews({Key? key, this.categoryTitle = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return categoryTitle != '' ? CategoryNews(categoryTitle: categoryTitle) : Container();
  }
}

Widget NewsTile(String title, String image) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Column(
      children: [
        Image.network(image),
        Text(title),
      ],
    ),
  );
}
