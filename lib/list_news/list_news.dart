import 'package:flutter/material.dart';
import 'category_news.dart';
import 'search_result.dart';

class ListNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.orange);
  }
}

class NewsTile extends StatelessWidget {
  var title = '';
  var image = '';

  NewsTile({Key? key, this.title = '', this.image = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}