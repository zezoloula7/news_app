import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news_app/widget/category_type.dart';
import 'package:news_app/widget/article_Listview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("NewsApp"),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: CategoryType()),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "GeneralNews",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          WidgetListview()
        ],
      ),
    );
  }
}
