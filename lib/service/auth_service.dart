import 'package:dio/dio.dart';
import 'package:flutter_v_test/service/dio/api_provider.dart';

import '../model/login_request.dart';
import '../model/login_response.dart';

class AuthService {
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      final response =
          await ApiProvider().dio.post('/login', data: loginRequest.toJson());
      return LoginResponse.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response?.data);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
