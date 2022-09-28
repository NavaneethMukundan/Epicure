class LoginModel {
  String? name;
  String? password;
  String? confirmPassword;
  int? phoneNumber;

  LoginModel({
    this.name,
    this.confirmPassword,
    this.password,
    this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "phoneNo": phoneNumber,
      "password": password,
      "confirmPassword": confirmPassword
    };
  }
}
