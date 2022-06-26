import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/news_title/category_news.dart';

class ListNews extends StatelessWidget {
  String categoryTitle = '';

  ListNews({Key? key, this.categoryTitle = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return categoryTitle != '' ? CategoryNews(categoryTitle: categoryTitle) : Container();
  }
  
}

