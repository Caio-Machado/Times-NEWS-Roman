import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

  void abrir(){
    canLaunch("http://www.google.com.br");
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF161314),
      child: ListView(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Início',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => abrir(),
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
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.tv, size: 27, color: Colors.white),
              title: Text(
                'Entreterimento',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.article, size: 27, color: Colors.white),
              title: Text(
                'Geral',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.health_and_safety, size: 27, color: Colors.white),
              title: Text(
                'Saúde',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.science, size: 27, color: Colors.white),
              title: Text(
                'Ciência',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.sports_soccer, size: 27, color: Colors.white),
              title: Text(
                'Esportes',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.computer, size: 27, color: Colors.white),
              title: Text(
                'Tecnologia',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            child: ListTile(
              leading: Icon(Icons.search, size: 27, color: Colors.white),
              title: Text(
                'Pesquisar',
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
