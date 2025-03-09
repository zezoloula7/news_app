import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/manager/cubit.dart';
import 'package:news_app/manager/state.dart';
import 'package:news_app/widget/article_item.dart';

class WidgetListview extends StatelessWidget {
  const WidgetListview({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitApp, StateApp>(builder: (context, state) {
      if (state is LoadedState) {
        return SliverList.builder(
            itemCount: state.model.length,
            itemBuilder: (context, index) {
                return ArticleItem(x: state.model[index]);
              }
            );
      } else if (state is ErrorState) {
        return SliverToBoxAdapter(
          child: Center(
            child: Text("Erreo:${state.message}"),
          ),
        );
      } else {
        return SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
