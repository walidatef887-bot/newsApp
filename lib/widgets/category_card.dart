import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {

  final CategoryModel categoryModel;

  const CategoryCard({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
        width: 150,
        height: 80,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  categoryModel.ImageUrl,
                ),
                fit: BoxFit.cover
            ),
            borderRadius: BorderRadius.circular(12)
        ),
        child: Center(child: Text(categoryModel.catrgoryName, style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),)),
      ),
    );
  }

}