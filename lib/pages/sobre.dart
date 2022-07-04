import 'package:flutter/material.dart';
import 'package:timesnewsroman/components/template/generic_templates.dart';

class Sobre extends StatelessWidget {
  Sobre({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const [
            Text(
              'Sobre o aplicativo',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 29),
            ),
            Text(
              'O aplicativo Times NEWS Roman tem como objetivo permitir a busca  de notícias de diversos sites, temas e idiomas',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 19),
            ),
            Text(
              '2022/1',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25),
            ),
            Text(
              'Caio Machado de Souza Gomes, Gabriel de Souza Passos, Matheus Oliveira',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
