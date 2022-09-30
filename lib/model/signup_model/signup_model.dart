class SignupModel {
  String? name;
  String? password;
  String? confirmPassword;
  // int? phoneNumber;
  String? email;
  String? role;

  SignupModel(
      {this.name,
      this.email,
      this.password,
      this.confirmPassword,
      // this.phoneNumber,
      this.role});

  Map<String, dynamic> toJson() {
    return {
      "name": name,
      // "phoneNo": phoneNumber,
      "email": email,
      "password": password,
      "confirmPassword": confirmPassword,
      "role": role
    };
  }
}
