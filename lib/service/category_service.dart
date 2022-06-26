import 'package:http/http.dart';
import 'package:timesnewsroman/service/mapper_response.dart';
import 'package:timesnewsroman/service/service_api.dart';

class CategoryService {

  static Future<List<dynamic>?> init( String? category ) async {
    RequestService service = RequestService();
    Response resp = await service.getTopHeadLines(category: category, pageSize: "10", country: "pt", apiKey: "dbbf3e42e5c046bcbc308abcc04caa3f");
    List<dynamic> data = MapperResponse.mapper(resp);
    return data;
  }

}