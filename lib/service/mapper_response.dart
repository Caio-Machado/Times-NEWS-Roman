import 'dart:convert';

import 'package:http/http.dart';
import 'package:timesnewsroman/model/news_parms.dart';

class MapperResponse {

  static List<dynamic> mapper(Response response){
    dynamic json = jsonDecode(response.body);

    return json["articles"].map( (item) => NewsParams( 
      title: item["title"],
      description: item["description"],
      url: item["url"],
      image: item["urlToImage"]
    )).toList();

  }

}