import 'package:dio/dio.dart';
import 'http_config.dart';

class HttpRequest {

  static BaseOptions baseOption = BaseOptions(
      baseUrl: BASE_URL,
      connectTimeout: TIME_OUT
  );

  static final dio = Dio(baseOption);

  // static 修饰 相当于类方法
  static Future request(String url, {String method = "get", Map<String, dynamic> params}) async {
    //2.发送网络请求
    Options option = Options(method: method);
    try {
      final Response result = await dio.request(url,queryParameters: params,options: option);
      return result;
    } on DioError catch(err) {
      throw err;
    }

  }
}