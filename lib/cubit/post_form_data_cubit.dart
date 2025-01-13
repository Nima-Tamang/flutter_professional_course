import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:flutter_application_1/model/postmodel.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

part 'post_form_data_state.dart';

class PostFormDataCubit extends Cubit<PostFormDataState> {
  PostFormDataCubit() : super(PostFormDataInitial());

  Future<void> getPost() async {
    try {
      emit(PostFormDataLoading());
      final response =  await http.get(Uri.parse('https://677ff57e0476123f76a8ec27.mockapi.io/api/post/post'));
      if (response.statusCode == 200) {
         final List<dynamic> data =jsonDecode(response.body);
         final List<Postmodel> posts=data.map(
          (post)=>Postmodel.tojson(post),
         ).toList();

          emit(PostFormDataLoaded(posts: posts));
      } else {
        throw response.body;
      }
    } catch (e) {
      emit(PostFormDataError(message: e.toString()));
    }
  }
}
