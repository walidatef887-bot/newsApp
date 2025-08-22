import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class CategoryListView extends StatelessWidget {
  final List<CategoryModel> categories = [
    CategoryModel(
      'https://goqii.com/blog/wp-content/uploads/6-Health-Benefits-of-Playing-Sports-1024x683.jpg',
      'Sports',
    ),
    CategoryModel(
      'https://dbppl.com/wp-content/uploads/2020/09/featured-solutions-quadient.jpg',
      'Business',
    ),
    CategoryModel(
      'https://t4.ftcdn.net/jpg/00/53/64/49/360_F_53644926_0mvUCIxCCTvIa7BAIFuUa3xsaNA9lbeb.jpg',
      'Science',
    ),
    CategoryModel(
      'https://img.freepik.com/premium-photo/cardano-blockchain-platform_23-2150411956.jpg',
      'Technology',
    ),
  ];

  String categoryState = 'business';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              if(index==0){
                categoryState = 'sports';
                print(categoryState);
              }
              else if(index==1){
                categoryState = 'business';
                print(categoryState);
              }
              else if(index==2){
                categoryState = 'science';
                print(categoryState);
              }
              else if(index==3){
                categoryState = 'technology';
                print(categoryState);
              }
            },
            child: CategoryCard(categoryModel: categories[index]),
          );
        },
      ),
    );
  }
}
