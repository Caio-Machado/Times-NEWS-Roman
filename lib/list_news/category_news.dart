import 'package:flutter/material.dart';

import '/templates/generic_templates.dart';
import 'list_news.dart';

class CategoryNews extends StatelessWidget {
  String categoryTitle = '';
  List<Map<String, dynamic>> news = [
    {
      'titulo': 'Panorama de hidrocarburos y electricidad de Brasil: Saesa, EDP, Neoenergía y otras - BNamericas',
      'imagem': 'https://www.bnamericas.com/assets/img/opengraphbna.jpg',
    },
    {
      'titulo': 'Tony y Mimy Succar estrenaron "Fronteras" junto a Anthony Chávez | Radio Panamericana - Radio Panamericana',
      'imagem': 'https://i.ytimg.com/vi/JUNApDAbNak/maxresdefault.jpg',
    },
    {
      'titulo': '심장이식 수술비 1500만원 내준 독지가, 알고 보니 유재석\" - 한국경제',
      'imagem': 'https://img.hankyung.com/photo/202206/03.21269352.1.jpg',
    },
    {
      'titulo': 'Cálculos renales: ¿cómo se prepara el jugo de apio para tratarlos naturalmente? - Revista Semana',
      'imagem': 'https://www.semana.com/resizer/SN9RR5ZIAv4YECgbbn3qEVWqQbo=/1200x646/filters:format(jpg):quality(50)/cloudfront-us-east-1.images.arcpublishing.com/semana/DSKZO6YRLNCV3BXTFQUTADVS7Y.jpg',
    },
    {
      'titulo': 'Max Q: Suit yourself - TechCrunch',
      'imagem': 'https://techcrunch.com/wp-content/uploads/2019/12/tc-space-stars.gif?w=709',
    },
    {
      'titulo': 'Darvin Ham, nuevo técnico de los Lakers: "No hay éxito sin sacrificio" - Agencia EFE',
      'imagem': 'http://estaticos.efe.com/efecom/recursos2/imagen.aspx?-P-2fL4Jfo8HOMjyjijS4BHwVVpj5ZhMJE3SQ4TncnkXVSTX-P-2bAoG0sxzXPZPAk5l-P-2fU5Ud-P-2bbsyGgZPeu4oIXzQLHk-P-2fw-P-3d-P-3d',
    },
    {
      'titulo': 'Vyšší výkon a řada dalších vychytávek. Apple odhalil dva nové MacBooky - Novinky.cz',
      'imagem': 'https://d15-a.sdn.cz/d_15/c_img_QL_r/VkTDAp.jpeg?fl=cro,0,1,937,527%7Cres,1200,,1%7Cjpg,80,,1',
    }
  ];

  CategoryNews({Key? key, this.categoryTitle = ''}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CategoryHeader(
            title: categoryTitle,
          ),
          ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: news.length,
            itemBuilder: (
              BuildContext context,
              int index,
            ) {
              return Container(
                child: NewsTile(
                  news[index]['title'],
                  news[index]['image'],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
