import 'package:flutter/material.dart';

import 'templates/scaffold.dart';
import 'home/home.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(appBarTheme: const AppBarTheme(backgroundColor: Color(0xFF161314))),
      home: ScaffoldTemplate(
        content: Home(),
      ),
    );
  }
}
