import 'package:http/http.dart';
import 'package:timesnewsroman/model/news_parms.dart';
import 'package:timesnewsroman/service/mapper_response.dart';
import 'package:timesnewsroman/service/service_api.dart';

class HomeService {

  static Future<List<dynamic>?> init() async {
    RequestService service = RequestService();
    List<dynamic> novaLista = [];
    List<String> categorys = ["business", "entertainment", "general", "health", "science", "sports", "technology" ];
    for (var i = 0; i < categorys.length ; i++) {
      final element = categorys[i];
      Response resp = await service.getTopHeadLines(category: element, pageSize: "1", country: "pt");
      List<dynamic> data = MapperResponse.mapper(resp);
      novaLista.add( data[0] );
    }
    return novaLista;
  }

}