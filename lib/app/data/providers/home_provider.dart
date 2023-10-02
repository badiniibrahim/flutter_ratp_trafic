import 'package:dio/dio.dart';
import 'package:transit_alerts/app/abstractions/i_provider.dart';

import '../../core/provider/api_provider.dart';

class HomeProvider extends IProvider<Response> {
  @override
  String get endpoint => "/v4/traffic/";

  Future<Response> getTraffic(String path) async {
    return await ApiProvider.instance.get(
      endpoint: "$endpoint$path",
    );
  }
}
