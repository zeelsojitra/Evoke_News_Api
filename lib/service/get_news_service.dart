import 'dart:convert';

import 'package:evoke_new_api/Model/news_model.dart';
import 'package:http/http.dart' as http;

class GetNewsService {
  static DateTime dateTime = DateTime.now();
  static Future getNews() async {
    print("${dateTime.toString().split(" ")[0]}");

    http.Response response = await http.get(
      Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=2022-12-06&sortBy=publishedAt&apiKey=7b13f03a264d400d9ac0c8854990972b"),
    );
    var Result = jsonDecode(response.body);
    return Result;
  }

  static Future<NewsModel> getNewsModel() async {
    http.Response response = await http.get(
      Uri.parse(
          "https://newsapi.org/v2/everything?q=tesla&from=${dateTime.toString().split(" ")[0]}&sortBy=publishedAt&apiKey=7b13f03a264d400d9ac0c8854990972b"),
    );

    print("RESPONSE===>>${jsonDecode(response.body)}");
    return newsModelFromJson(response.body);
  }
}
