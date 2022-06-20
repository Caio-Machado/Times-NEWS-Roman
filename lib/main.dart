import 'package:flutter/material.dart';

import 'package:timesnewsroman/templates/generic_templates.dart';
import 'home/home.dart';
import 'list_news/list_news.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/list_category': (context) => ListNews(categoryTitle: 'business')
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF161314),
        ),
      ),
    );
  }
}
