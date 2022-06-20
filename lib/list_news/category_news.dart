import 'package:flutter/material.dart';

import 'package:timesnewsroman/templates/generic_templates.dart';
import 'list_news.dart';

class CategoryNews extends StatelessWidget {
  String categoryTitle = '';
  List<Map<String, dynamic>> news = [
    {
      'title': 'Panorama de hidrocarburos y electricidad de Brasil: Saesa, EDP, Neoenergía y otras - BNamericas',
      'image': 'https://static01.nyt.com/images/2022/06/18/us/18virus-briefing-cdc-1/18virus-briefing-cdc-1-facebookJumbo.jpg',
    },
    {
      'title': 'Tony y Mimy Succar estrenaron "Fronteras" junto a Anthony Chávez | Radio Panamericana - Radio Panamericana',
      'image': 'https://a2.espncdn.com/combiner/i?img=%2Fphoto%2F2022%2F0618%2Fr1026408_1296x729_16-9.jpg',
    },
    {
      'title': '심장이식 수술비 1500만원 내준 독지가, 알고 보니 유재석\" - 한국경제',
      'image': 'https://static01.nyt.com/images/2022/06/04/science/04uterine-cancer1/04uterine-cancer1-facebookJumbo.jpg',
    },
    {
      'title': 'Cálculos renales: ¿cómo se prepara el jugo de apio para tratarlos naturalmente? - Revista Semana',
      'image': 'https://cdn.cnn.com/cnnnext/dam/assets/220614231619-maggie-toulouse-oliver-file-restricted-100520-super-tease.jpg',
    },
    {
      'title': 'Max Q: Suit yourself - TechCrunch',
      'image': 'https://static01.nyt.com/images/2022/06/19/world/19colombia-election-promo-200pm/19colombia-election-promo-200pm-facebookJumbo.jpg',
    },
    {
      'title': 'Darvin Ham, nuevo técnico de los Lakers: "No hay éxito sin sacrificio" - Agencia EFE',
      'image': 'https://tvline.com/wp-content/uploads/2022/06/the-summer-i-turned-pretty.jpg?w=620',
    },
    {
      'title': 'Vyšší výkon a řada dalších vychytávek. Apple odhalil dva nové MacBooky - Novinky.cz',
      'image': 'https://d15-a.sdn.cz/d_15/c_img_QL_r/VkTDAp.jpeg?fl=cro,0,1,937,527%7Cres,1200,,1%7Cjpg,80,,1',
    }
  ];

  CategoryNews({Key? key, this.categoryTitle = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
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
