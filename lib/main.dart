import 'package:flutter/material.dart';

import 'package:timesnewsroman/components/template/generic_templates.dart';
import 'package:timesnewsroman/pages/home.dart';
import 'package:timesnewsroman/pages/list_news.dart';
void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/negocios': (context) => ListNews(categoryTitle: 'business'),
        '/entreterimento': (context) => ListNews(categoryTitle: 'entertainment'),
        '/geral': (context) => ListNews(categoryTitle: 'general'),
        '/saude': (context) => ListNews(categoryTitle: 'health'),
        '/ciencia': (context) => ListNews(categoryTitle: 'science'),
        '/esportes': (context) => ListNews(categoryTitle: 'sports'),
        '/tecnologia': (context) => ListNews(categoryTitle: 'technology'),
        '/pesquisar': (context) => ListNews(categoryTitle: 'find'),
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF161314),
        ),
      ),
    );
  }
}
