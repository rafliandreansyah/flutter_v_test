import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_v_test/model/login_request.dart';
import 'package:flutter_v_test/service/auth_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../constant/pref.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginEvent>((event, emit) async {
      final pref = await SharedPreferences.getInstance();
      if (event is PostLoginEvent) {
        if (event.loginRequest.email == null ||
            event.loginRequest.email!.isEmpty) {
          emit(const EmailBlank('email must not be blank'));
          return;
        }
        if (event.loginRequest.password == null ||
            event.loginRequest.password!.isEmpty) {
          emit(const PasswordBlank('password must not be blank'));
          return;
        }
        emit(LoginLoading());
        try {
          var loginResponse = await AuthService().login(event.loginRequest);
          if (loginResponse.token != null && loginResponse.token!.isNotEmpty) {
            // save token to preference
            await pref.setString(tokenPrefKey, loginResponse.token!);

            emit(LoginSuccess(loginResponse.token!));
          } else {
            emit(const LoginError('token is empty'));
          }
        } catch (err) {
          emit(LoginError(err.toString()));
        }
      } else if (event is CheckLoginEvent) {
        String? token = pref.getString(tokenPrefKey);
        if (token != null) {
          emit(LoginRedirect());
        }
      }
    });
  }
}
