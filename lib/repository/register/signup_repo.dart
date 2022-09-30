import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:epicure/model/signup_model/signup_model.dart';
import 'package:epicure/model/signup_model/signup_response.dart';
import 'package:epicure/repository/connection.dart';
import 'package:epicure/repository/servies.dart';
import 'package:epicure/utils/url.dart';

class SignupRepo {
  Future<SignupResponse?> signup(SignupModel data) async {
    if (await connectionCheck()) {
      try {
        final response = await DioServies.postFunction(
            url: Url.signupUrl, value: data.toJson());

        if (response.statusCode! >= 200 && response.statusCode! <= 299) {
          log("Signup successfully done..................................");
          return SignupResponse.fromJson(response.data);
        } else {
          return SignupResponse.fromJson(response.data);
        }
      } on DioError catch (e) {
        if (e.response!.statusCode == 422) {
          return SignupResponse(message: "Email address already exists !!");
        }
      } catch (e) {
        return SignupResponse(message: 'Something went Wrong');
      }
    } else {
      return SignupResponse(message: "Internet Connection error");
    }
    return null;
  }
}
