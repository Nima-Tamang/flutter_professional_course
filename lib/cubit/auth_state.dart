part of 'auth_cubit.dart';

@immutable
sealed class AuthState {}

final class AuthInitial extends AuthState {}
final class AuthError extends AuthState {
  final String messages;
  AuthError(this.messages);
}
final class AuthLoading extends AuthState {
}
final class AuthSuccess extends AuthState {
  final String name;

  AuthSuccess(this.name);
}

