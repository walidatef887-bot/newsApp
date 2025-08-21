import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=72baa2c2ffda4742a531d0c496e9c7c9',
      );
      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articleList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          imageUrl: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"],
        );
        articleList.add(articleModel);
      }
     // print(articleList);
      //print(articles);

      return articleList;
    } on Exception catch (e) {
      return [];
    }
  }

}

/*
class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getNews() async {
    try {
      var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=6ee28a1f41564295b5437d7531aa0154',
      );

      Map<String, dynamic> jsonData = response.data;

      List<dynamic> articles = jsonData["articles"];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          imageUrl: article["urlToImage"],
          title: article["title"],
          subTitle: article["description"],
        );
        articlesList.add(articleModel);
      }

      return articlesList;
    } on Exception catch (e) {
      return [];
    }
  }
}
*/