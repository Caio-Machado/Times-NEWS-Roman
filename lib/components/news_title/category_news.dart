import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/news_title/news_title.dart';

import 'package:timesnewsroman/components/template/generic_templates.dart';
import 'package:timesnewsroman/pages/list_news.dart';
import 'package:timesnewsroman/service/category_service.dart';

class CategoryNews extends StatelessWidget {
  String type;
  final filters;

  CategoryNews({Key? key, this.filters, this.type = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (type == 'search') {
      return ScaffoldTemplate(
        child: ListNews(
          news: CategoryService.initFiltro(filters?[0], filters?[1]),
        ),
      );
    } else {
      return ScaffoldTemplate(
        child: ListNews(
          news: CategoryService.init(filters?[0], filters?[1]),
        ),
      );
    }
  }
}
