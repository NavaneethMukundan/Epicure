import 'dart:developer';
import 'package:dio/dio.dart';
import 'package:epicure/model/login_model/login_model.dart';
import 'package:epicure/model/login_model/login_response.dart';
import 'package:epicure/repository/connection.dart';
import 'package:epicure/repository/servies.dart';
import 'package:epicure/utils/url.dart';

class SigninRepository {
  Future<LoginResponse?> signinReop(LoginModel data) async {
    if (await connectionCheck()) {
      try {
        final response = await DioServies.postFunction(
            url: Url.loginUrl, value: data.tojson());

        if (response.statusCode! >= 200 && response.statusCode! <= 299) {
          log('Login Sucessfully done ...................');
          return LoginResponse.fromJson(response.data);
        } else {
          return LoginResponse.fromJson(response.data);
        }
      } on DioError catch (e) {
        if (e.response!.statusCode == 401) {
          return LoginResponse(message: 'Invalid email/password combination.');
        }
      } catch (e) {
        return LoginResponse(message: 'Something went Wrong');
      }
    } else {
      return LoginResponse(message: 'No Internet Connection');
    }

    return null;
  }
}
