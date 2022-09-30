class LoginResponse {
  String? message;
  String? token;

  LoginResponse({
    this.message,
    this.token,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      LoginResponse(message: json["message"] ?? "", token: json["token"] ?? "");
}
