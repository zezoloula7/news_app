import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data.dart';
import 'package:news_app/manager/state.dart';
import 'package:news_app/model/model_item.dart';
import 'package:news_app/network/api_server.dart';


class CubitApp extends Cubit<StateApp> {
  CubitApp() : super(InitialState());
  ApiServer apiServer = ApiServer();
  Future getdata({String category="general"}) async{
    emit(LoadingState());
    try{
      var json=await apiServer.getNews(endPoint:"v2/top-headlines?country=us&category=$category&apiKey=47fea471b1b2489c9f8ea7db367cbda2");
      List<ModelItem> model=[];
      for(var i in json["articles"])
      {
        model.add(ModelItem(title: i["title"], imageUrl: i["urlToImage"], description: i["description"]));
      }
      emit(LoadedState(model: model));
    }catch(e){
      emit(ErrorState(message: e.toString()));
    }
  }
}