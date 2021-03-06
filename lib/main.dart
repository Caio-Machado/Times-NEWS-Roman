import 'package:flutter/material.dart';

import 'package:timesnewsroman/generateRoute.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      onGenerateRoute: GenerateRoute.generateRoute,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF161314),
        ),
      ),
    );
  }
}
