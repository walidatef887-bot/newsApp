
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';
import 'news_tile.dart';

class NewsListView extends StatefulWidget{
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  @override

  List<ArticleModel> articles = [];
  bool isLoading = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
     getData();

  }

  Future<void> getData() async {
    articles =await NewsServices(Dio()).getNews();
    isLoading = false;
    setState(() {

    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return isLoading? Center(child: CircularProgressIndicator()): ListView.builder(
      itemCount: articles.length,
      itemBuilder: (context, index) {
        return NewsTile(articleModel: articles[index],);
      },
    );
  }
}