import 'package:dio/dio.dart';
import 'package:transit_alerts/app/core/environment.dart';

class ApiHttpClient {
  static get _defaultHeader => {"Content-Type": "application/json"};

  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: Environment.apiUrl,
      connectTimeout: 60 * 10000,
      receiveTimeout: 60 * 10000,
      headers: _defaultHeader,
    ),
  );

  Future<Response> request(
    String path, {
    dynamic body,
    String method = "GET",
    Map<String, dynamic>? headers = const {},
    Map<String, dynamic>? queryParameters = const {},
    bool authenticated = false,
  }) async {
    return _dio.request(
      path,
      data: body,
      queryParameters: queryParameters,
    );
  }
}
