import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class LoginResponse {
  String? token;
  String? error;
  LoginResponse(this.token);

  LoginResponse.fromJson(dynamic json) {
    token = json['token'];
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }
}
