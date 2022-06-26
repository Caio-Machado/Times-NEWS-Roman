import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  Menu({Key? key}) : super(key: key);

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
            onTap: () => Navigator.pushNamed(context, '/negocios'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Negócios',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/entreterimento'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Entreterimento',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/geral'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Geral',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/saude'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Saúde',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/ciencia'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Ciência',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/esportes'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Esportes',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/tecnologia'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Tecnologia',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, '/pesquisar'),
            child: const Padding(
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: Icon(Icons.home, size: 27, color: Colors.white),
                title: Text(
                  'Pesquisar',
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
