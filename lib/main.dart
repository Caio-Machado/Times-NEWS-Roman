import 'package:flutter/material.dart';

import 'menu.dart';
import 'home.dart';

void main() => runApp(MainWidget());

class MainWidget extends StatelessWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(appBarTheme: AppBarTheme(backgroundColor: const Color(0xFF161314))),
        home: Scaffold(
            drawer: Drawer(
              child: Menu(),
              backgroundColor: const Color(0xFF161314),
            ),
            appBar: AppBar(title: const Center(child: Text('Times NEWS Roman', style: TextStyle(fontFamily: 'brushtip', fontSize: 25)))),
            body: Home()));
  }
}
