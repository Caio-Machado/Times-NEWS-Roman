import 'package:flutter/material.dart';

import 'package:timesnewsroman/components/template/generic_templates.dart';
import 'package:timesnewsroman/pages/home.dart';
import 'package:timesnewsroman/pages/list_news.dart';
import 'package:timesnewsroman/pages/search_result.dart';
void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/negocios': (context) => ListNews(categoryTitle: 'business', country: 'pt'),
        '/entreterimento': (context) => ListNews(categoryTitle: 'entertainment', country: 'pt'),
        '/geral': (context) => ListNews(categoryTitle: 'general', country: 'pt'),
        '/saude': (context) => ListNews(categoryTitle: 'health', country: 'pt'),
        '/ciencia': (context) => ListNews(categoryTitle: 'science', country: 'pt'),
        '/esportes': (context) => ListNews(categoryTitle: 'sports', country: 'pt'),
        '/tecnologia': (context) => ListNews(categoryTitle: 'technology', country: 'pt'),
        '/pesquisar': (context) => SearchResult(),
      },
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF161314),
        ),
      ),
    );
  }
}
