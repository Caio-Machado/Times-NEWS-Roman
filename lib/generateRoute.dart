import 'package:flutter/material.dart';
import 'package:timesnewsroman/pages/sobre.dart';
import 'package:timesnewsroman/pages/home.dart';
import 'package:timesnewsroman/components/news_title/category_news.dart';
import 'package:timesnewsroman/pages/search_result.dart';

class GenerateRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      case '/list_category':
        return MaterialPageRoute(
          builder: (_) => CategoryNews(type: 'categoryes', filters: args),
        );
      case '/pesquisar':
        return MaterialPageRoute(
          builder: (_) => SearchResult(),
        );
      case '/sobre':
        return MaterialPageRoute(builder: (_) => Sobre());
      default:
        return MaterialPageRoute(
          builder: (_) => const Center(
            child: Text(
              'Route not found',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
          ),
        );
    }
  }

  void changeRoute(BuildContext context, String route, List<String> arguments) {
    Navigator.pushReplacementNamed(context, route, arguments: arguments);
  }
}
