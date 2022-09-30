import 'package:dio/dio.dart';
import 'package:epicure/utils/url.dart';

class DioServies {
  static final dio = Dio(BaseOptions(baseUrl: Url.baseUrl));

  static Future<Response<dynamic>> postFunction(
      {required String url, required value}) async {
    return await dio.post(url, data: value).then((value) {
      return value;
    });
  }
}
