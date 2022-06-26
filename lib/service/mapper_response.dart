import 'dart:convert';

import 'package:http/http.dart';
import 'package:timesnewsroman/model/news_parms.dart';

class MapperResponse {

  static List<dynamic> mapper(Response response){
    dynamic json = jsonDecode(response.body);

    return json["articles"].map( (item) => NewsParams( 
      title: item["title"] != null ? item["title"] : 'Sem Titulo',
      description: item["description"] != null ? item["description"] : 'Sem Descrição',
      url: item["url"] != null ? item["url"] : '',
      image: item["urlToImage"] != null ? item["urlToImage"] : 'https://www.cer-cavalos.com/images/not_found.png' 
    )).toList();

  }

}