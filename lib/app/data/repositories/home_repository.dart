import 'package:dio/dio.dart';
import 'package:transit_alerts/app/abstractions/i_repository.dart';
import 'package:transit_alerts/app/data/models/rers_model.dart';

import '../providers/home_provider.dart';

class HomeRepository extends IRepository<Response> {
  @override
  HomeProvider get provider => HomeProvider();

  Future<List<TrafficResponse>> getRersTraffic(String path) async {
    final response = await provider.getTraffic(path);
    var result = response.data['result']['rers'] as List;
    List<TrafficResponse> rersList =
        result.map((m) => TrafficResponse.fromJson(m)).toList();
    return rersList;
  }

  Future<List<TrafficResponse>> getMetrosTraffic(String path) async {
    final response = await provider.getTraffic(path);
    var result = response.data['result']['metros'] as List;
    List<TrafficResponse> rersList =
        result.map((m) => TrafficResponse.fromJson(m)).toList();
    return rersList;
  }

  Future<List<TrafficResponse>> getTramwaysTraffic(String path) async {
    final response = await provider.getTraffic(path);
    var result = response.data['result']['tramways'] as List;
    List<TrafficResponse> rersList =
        result.map((m) => TrafficResponse.fromJson(m)).toList();
    return rersList;
  }
}
