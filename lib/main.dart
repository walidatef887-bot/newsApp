import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/screens/home_screen.dart';
import 'package:news_app/services/news_services.dart';

void main() {
  runApp(MyApp());
  NewsServices(Dio()).getNews();
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: HomeScreen());
  }
}
