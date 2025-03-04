

import 'package:flutter/material.dart';
import 'package:news_app/screens/homescreen.dart';

void main(){

}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}