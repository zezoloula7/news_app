// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:news_app/model/model_item.dart';

abstract class StateApp{}
class InitialState extends StateApp {}
class LoadedState extends StateApp{
  List<ModelItem> model;
  LoadedState({
    required this.model,
  }); 
}
class ErrorState extends StateApp {
  String message;
  ErrorState({
    required this.message,
  });
}
class LoadingState extends StateApp {}
