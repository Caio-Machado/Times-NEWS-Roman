import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/template/generic_templates.dart';
import 'package:timesnewsroman/model/news_parms.dart';
import 'package:timesnewsroman/service/home_service.dart';

import '../components/carousel/carousel.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
        child: FutureBuilder(
            future: HomeService.init(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                List<dynamic> noticias = snapshot.data as List<dynamic>;
                return Carousel(noticias: noticias);
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            }));
  }
}
