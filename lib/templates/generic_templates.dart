import 'package:flutter/material.dart';

import '/templates/menu.dart';
import '/templates/appbar.dart';

class ScaffoldTemplate extends StatelessWidget {
  Widget? content;

  ScaffoldTemplate({Key? key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTemplate(),
      endDrawer: Menu(),
      body: content,
    );
  }
}

class CategoryHeader extends StatelessWidget {
  var title = '';

  CategoryHeader({Key? key, this.title = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 65),
      padding: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      color: const Color(0xFF161314),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
