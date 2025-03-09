

import 'package:dio/dio.dart';


class ApiServer {
  String url = "https://newsapi.org/";
  Dio dio = Dio();

  Future getNews({required String endPoint}) async {
    var json = await dio.get("$url$endPoint");
    return json.data;
  }
}
