// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:news_app/data.dart';
import 'package:news_app/widget/category_item.dart';

class CategoryType extends StatelessWidget {
  const CategoryType({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 7,
          itemBuilder: (context, index) {
            return CategoryItem(model: category[index],);
          }),
    );
  }
}
