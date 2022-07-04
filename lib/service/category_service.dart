import 'package:http/http.dart';
import 'package:timesnewsroman/service/mapper_response.dart';
import 'package:timesnewsroman/service/service_api.dart';

class CategoryService {
  static Future<List<dynamic>?> init(String? category, String? country) async {
    RequestService service = RequestService();
    Response resp = await service.getTopHeadLines(
        category: category, pageSize: "10", country: country);
    List<dynamic> data = MapperResponse.mapper(resp);
    return data;
  }

  static Future<List<dynamic>?> initFiltro(
      String? filtro, String? country) async {
    RequestService service = RequestService();
    Response resp = await service.getEverything(
      q: filtro,
      language: country,
    );
    List<dynamic> data = MapperResponse.mapper(resp);
    return data;
  }
}
