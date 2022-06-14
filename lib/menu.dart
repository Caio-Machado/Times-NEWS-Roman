import 'package:flutter/material.dart';
import 'list_news/list_news.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  void changeScreen(context, route) {
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        GestureDetector(
            onTap: () {
              changeScreen(context, '/');
            },
            child: const ListTile(
              leading: Icon(Icons.home, size: 27, color: Colors.white),
              title: Text('Início', style: TextStyle(fontSize: 20, color: Colors.white)),
            )),
        GestureDetector(
            onTap: () {
              changeScreen(context, '/list');
              ;
            },
            child: const Padding(
                padding: EdgeInsets.only(top: 10, bottom: 10),
                child: ListTile(
                  leading: Icon(Icons.attach_money, size: 27, color: Colors.white),
                  title: Text('Negócios', style: TextStyle(fontSize: 15, color: Colors.white)),
                ))),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.tv, size: 27, color: Colors.white),
              title: Text('Entreterimento', style: TextStyle(fontSize: 15, color: Colors.white)),
            )),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.article, size: 27, color: Colors.white),
              title: Text('Geral', style: TextStyle(fontSize: 15, color: Colors.white)),
            )),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.health_and_safety, size: 27, color: Colors.white),
              title: Text('Saúde', style: TextStyle(fontSize: 15, color: Colors.white)),
            )),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.science, size: 27, color: Colors.white),
              title: Text('Ciência', style: TextStyle(fontSize: 15, color: Colors.white)),
            )),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.sports_soccer, size: 27, color: Colors.white),
              title: Text('Esportes', style: TextStyle(fontSize: 15, color: Colors.white)),
            )),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.computer, size: 27, color: Colors.white),
              title: Text('Tecnologia', style: TextStyle(fontSize: 15, color: Colors.white)),
            )),
        const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.search, size: 27, color: Colors.white),
              title: Text('Pesquisar', style: TextStyle(fontSize: 15, color: Colors.white)),
            ))
      ],
    );
  }
}
