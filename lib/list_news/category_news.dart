import 'package:flutter/material.dart';

import '/templates/generic_templates.dart';
import 'list_news.dart';

class CategoryNews extends StatelessWidget {
  String categoryTitle = '';
  List<Map<String, dynamic>> news = [
    {
      'title': 'Panorama de hidrocarburos y electricidad de Brasil: Saesa, EDP, Neoenergía y otras - BNamericas',
      'image': 'https://static01.nyt.com/images/2022/06/13/multimedia/13bear-market-blog-promo/13bear-market-blog-promo-facebookJumbo.jpg',
    },
    {
      'title': 'Tony y Mimy Succar estrenaron "Fronteras" junto a Anthony Chávez | Radio Panamericana - Radio Panamericana',
      'image': 'https://cdn.cnn.com/cnnnext/dam/assets/220613141421-yellowstone-national-park-flooding-super-tease.jpg',
    },
    {
      'title': '심장이식 수술비 1500만원 내준 독지가, 알고 보니 유재석\" - 한국경제',
      'image': 'https://cdn.vox-cdn.com/thumbor/Qy11JoSsJ5P9s9QWW0YgoIrHBPM=/0x429:6048x3595/fit-in/1200x630/cdn.vox-cdn.com/uploads/chorus_asset/file/23583834/1238379839.jpg',
    },
    {
      'title': 'Cálculos renales: ¿cómo se prepara el jugo de apio para tratarlos naturalmente? - Revista Semana',
      'image': 'https://static.foxnews.com/foxnews.com/content/uploads/2022/03/Supreme-Court-Hearing-Jackson-John-Cornyn.jpg',
    },
    {
      'title': 'Max Q: Suit yourself - TechCrunch',
      'image': 'https://storage.googleapis.com/afs-prod/media/b3643d735c664f9bb07b38472675e81d/3000.jpeg',
    },
    {
      'title': 'Darvin Ham, nuevo técnico de los Lakers: "No hay éxito sin sacrificio" - Agencia EFE',
      'image': 'https://cdn.cnn.com/cnnnext/dam/assets/220613123114-01-buesching-mastodon-super-tease.jpg',
    },
    {
      'title': 'Vyšší výkon a řada dalších vychytávek. Apple odhalil dva nové MacBooky - Novinky.cz',
      'image': 'https://d15-a.sdn.cz/d_15/c_img_QL_r/VkTDAp.jpeg?fl=cro,0,1,937,527%7Cres,1200,,1%7Cjpg,80,,1',
    }
  ];

  CategoryNews({Key? key, this.categoryTitle = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
              itemCount: news.length,
              itemBuilder: (BuildContext context, int index) {
                return NewsTile(
                  title: news[index]['title'],
                  image: news[index]['image'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
