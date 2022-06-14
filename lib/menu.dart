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
        InkWell(
            onTap: () {
              changeScreen(context, '/');
            },
            child: const ListTile(
              leading: Icon(Icons.home, size: 27, color: Colors.white),
              title: Text('Início', style: TextStyle(fontSize: 20, color: Colors.white)),
            )),
        InkWell(
          onTap: () {
            changeScreen(context, '/list');
          },
          child: const Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.attach_money, size: 27, color: Colors.white),
              title: Text(
                'Negócios',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
