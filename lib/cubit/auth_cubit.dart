import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  // Simulate the login process
  void login(String username, String password) {
    emit(AuthLoading());
      if (username == "test" && password == "password") {
        emit(AuthSuccess(username));
      } else {
        emit(AuthError("Invalid credentials"));
      }
    }
  }
  

