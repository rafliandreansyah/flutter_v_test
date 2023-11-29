import 'package:dio/dio.dart';
import 'package:flutter_v_test/service/dio/logging_interceptors.dart';

class ApiProvider {
  static Dio _dio() {
    final option = BaseOptions(
      baseUrl: 'https://reqres.in/api',
      connectTimeout: const Duration(minutes: 3),
      receiveTimeout: const Duration(minutes: 3),
    );
    final setupDio = Dio(option);
    setupDio.interceptors.add(LoggingInterceptors());
    return setupDio;
  }

  Dio get dio => _dio();
}
