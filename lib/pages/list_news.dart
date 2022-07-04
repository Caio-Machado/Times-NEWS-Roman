import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/news_title/news_title.dart';

class ListNews extends StatelessWidget {
  Future? news;

  ListNews({Key? key, this.news}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FutureBuilder(
        future: news,
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
        },
      ),
    );
  }
}
