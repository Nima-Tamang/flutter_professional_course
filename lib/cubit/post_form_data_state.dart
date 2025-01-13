part of 'post_form_data_cubit.dart';

@immutable
sealed class PostFormDataState {}

final class PostFormDataInitial extends PostFormDataState {}
final class PostFormDataLoading extends PostFormDataState {

}
final class PostFormDataLoaded extends PostFormDataState {
final List<Postmodel> posts;

PostFormDataLoaded({required this.posts});

}
final class PostFormDataError extends PostFormDataState {
  final String message;

  PostFormDataError({required this.message});

}



