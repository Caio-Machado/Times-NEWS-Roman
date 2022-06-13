import 'package:flutter/material.dart';

import 'templates/generic_templates.dart';
import 'home/home.dart';
import 'list_news/list_news.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => ScaffoldTemplate(
              content: Home(),
            ),
        '/list': (context) => ScaffoldTemplate(
              content: ListNews(categoryTitle: 'business'),
            ),
      },
      theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF161314))),
      initialRoute: '/',
    );
  }
}
