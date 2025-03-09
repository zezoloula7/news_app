import 'package:flutter/material.dart';
import 'package:news_app/model/model_category.dart';

class CategoryItem extends StatelessWidget {
  final ModelCategory model;
  const CategoryItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, "S1",arguments: model.title.toString());
        },
        child: Container(
          height: 70,
          width: 140,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(model.imageUrl), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: Text(
            model.title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
          )),
        ),
      ),
    );
  }
}
