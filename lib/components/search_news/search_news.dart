import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/news_title/news_title.dart';

import 'package:timesnewsroman/components/template/generic_templates.dart';
import 'package:timesnewsroman/service/category_service.dart';

class SearchNewsComponent extends StatelessWidget {
  String filtro = '';
  String country = '';

  SearchNewsComponent({Key? key, this.filtro = '', this.country = ''})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
            child: FutureBuilder(
                future: CategoryService.initFiltro(filtro, country),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    List<dynamic> noticias = snapshot.data as List<dynamic>;
                    return Column(
                      children: [
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: noticias.length,
                          itemBuilder: (BuildContext context, int index) {
                            return NewsTile(
                                title: noticias[index].title,
                                image: noticias[index].image,
                                url: noticias[index].url);
                          },
                        ),
                      ],
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                })
      );
  }
}
