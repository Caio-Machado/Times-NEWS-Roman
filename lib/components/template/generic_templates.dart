import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/template/menu.dart';

class ScaffoldTemplate extends StatelessWidget {
  Widget? child;

  ScaffoldTemplate({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarTemplate(),
      endDrawer: Menu(),
      body: child,
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

AppBar AppBarTemplate() {
  return AppBar(
    title: const Text(
      'Times NEWS Roman',
      style: TextStyle(fontFamily: 'brushtip', fontSize: 30),
    ),
  );
}
