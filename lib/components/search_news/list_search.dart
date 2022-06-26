import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/search_news/search_news.dart';

class ListSearch extends StatelessWidget {
  String filtro = '';
  String country = '';

  ListSearch({Key? key, this.filtro = '', this.country = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return filtro != '' && country != '' ? SearchNewsComponent(filtro: filtro, country: country) : Container();
  }
  
}