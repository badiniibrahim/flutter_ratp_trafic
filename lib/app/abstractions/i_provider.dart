/// It's a generic class that provides a set of methods to interact with a REST API
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:transit_alerts/app/core/provider/api_provider.dart';

abstract class IProvider<T> {
  String get endpoint;

  Future<Response> list({Map<String, dynamic>? query, String? path}) async {
    final Response response = await ApiProvider.instance.get(
      endpoint: "/movie/popular?api_key=${dotenv.env['API_KEY']}",
      queryParameters: query,
    );

    return response;
  }

}
