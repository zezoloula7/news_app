import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/manager/cubit.dart';
import 'package:news_app/screens/homescreen.dart';
import 'package:news_app/screens/magazin.dart';
import 'package:news_app/screens/news_screen.dart';

void main() {
  runApp(NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => CubitApp()..getdata(),
    child: MaterialApp(
      routes: {
        "S1":(context)=> NewsScreen(),
        "S2":(context)=> WebViewScreen()
      },
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    ),
    );
  }
}
