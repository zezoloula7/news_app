import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/manager/cubit.dart';
import 'package:news_app/manager/state.dart';
import 'package:news_app/widget/article_Listview.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String data=ModalRoute.of(context)!.settings.arguments as String; 
    return BlocProvider(
      create: (context) => CubitApp()..getdata(category:data),
      child: BlocBuilder<CubitApp,StateApp>(builder: (context, state) {
        
          return Scaffold(
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: Colors.teal,
              title: Text(data),
            ),
            body:CustomScrollView(slivers: [WidgetListview()]) ,
          );
        
      }),
    );
  }
}
