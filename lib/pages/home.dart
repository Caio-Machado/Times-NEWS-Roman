import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:timesnewsroman/components/template/generic_templates.dart';
import 'package:timesnewsroman/service/home_service.dart';
import 'package:timesnewsroman/service/mapper_response.dart';
import 'package:timesnewsroman/service/service_api.dart';

import '../components/carousel/carousel.dart';

class Home extends StatefulWidget {
  Home({Key? key }) : super(key: key );
  
  @override
  State<Home> createState() => _Home();
}

class _Home extends State<Home> {

  List<dynamic>? noticias;

  void inicializar() async {
    print("Inicializando Tela Inicial");
    noticias = await HomeService.init();
  }

  @override
  void initState() {
    super.initState();
    inicializar();
  }

  @override
  Widget build(BuildContext context) {
    return ScaffoldTemplate(child: Carousel(noticias: noticias ));
  }
  
}
