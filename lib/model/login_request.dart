/// email : "eve.holt@reqres.in"
/// password : "cityslicka"

class LoginRequest {
  String? email;
  String? password;

  LoginRequest(this.email, this.password);

  LoginRequest.fromJson(dynamic json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['password'] = password;
    return map;
  }
}
