// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:news_app/model/model_item.dart';

class ArticleItem extends StatelessWidget {
  const ArticleItem({
    Key? key,
    required this.x,
  }) : super(key: key);
  final ModelItem x;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "S2", arguments: x.title);
          },
          child: Container(
            height: 240,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  height: 130,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  x.imageUrl ?? "https://th.bing.com/th/id/R.fa1131ccb045042d24884e3ab5d7b99e?rik=rvcZSyd3MO7sog&pid=ImgRaw&r=0",
                ),
                Text(
                  softWrap: true,
                  maxLines: 1,
                  x.title ,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  softWrap: true,
                  maxLines: 2,
                  x.description ??"no description",
                    style: TextStyle(
                        color: Colors.black38,
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
