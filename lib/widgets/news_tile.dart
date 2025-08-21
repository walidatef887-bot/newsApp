import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTile extends StatelessWidget {
  final ArticleModel articleModel;

  const NewsTile({super.key, required this.articleModel});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(12),
            child: Image.network(
              articleModel.imageUrl,
              fit: BoxFit.cover,
              height: 200,
              width: double.infinity,
            ),
          ),
          SizedBox(height: 12),
          Text(
            articleModel.title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              fontSize: 12,
            ),
            maxLines: 2,
          ),
          SizedBox(height: 4),
          Text(
            articleModel.subTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
              color: Colors.grey,
              fontSize: 8,
            ),
            maxLines: 2,
          ),
        ],
      ),
    );
  }
}
