import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_listView.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_tile.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('News', style: TextStyle(fontWeight: FontWeight.bold)),
            Text(
              'Cloud',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CategoryListView(),
            SizedBox(height: 15,),
            Expanded(child: NewsListView()),
          ],
        ),
      ),
    );
  }
}
