class SignupResponse {
  String? message;
  String? userId;

  SignupResponse({this.message, this.userId});

  factory SignupResponse.fromJson(Map<String, dynamic> json) => SignupResponse(
      message: json["message"] ?? "", userId: json["userId"] ?? "");
}