import 'package:flutter/material.dart';

class SideDrawer extends StatelessWidget {
  SideDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF161314),
      child: ListView(
        children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/',
              arguments: ['', ''],
            ),
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
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['business', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading:
                    Icon(Icons.attach_money, size: 27, color: Colors.white),
                title: Text(
                  'Negócios',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['entertainment', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.tv, size: 27, color: Colors.white),
                title: Text(
                  'Entreterimento',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['general', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.article, size: 27, color: Colors.white),
                title: Text(
                  'Geral',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['health', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.health_and_safety,
                    size: 27, color: Colors.white),
                title: Text(
                  'Saúde',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['science', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.science, size: 27, color: Colors.white),
                title: Text(
                  'Ciência',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['sports', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading:
                    Icon(Icons.sports_soccer, size: 27, color: Colors.white),
                title: Text(
                  'Esportes',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/list_category',
              arguments: ['technology', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.computer, size: 27, color: Colors.white),
                title: Text(
                  'Tecnologia',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/pesquisar',
              arguments: ['', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.search, size: 27, color: Colors.white),
                title: Text(
                  'Pesquisar',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(
              context,
              '/sobre',
              arguments: ['', ''],
            ),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.info, size: 27, color: Colors.white),
                title: Text(
                  'Sobre',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
