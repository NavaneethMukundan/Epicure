class LoginModel {
  String? email;
  String? password;

  LoginModel({this.email, this.password});

  Map<String, dynamic> tojson() {
    return {
      "email": email,
      "password": password,
    };
  }
}
