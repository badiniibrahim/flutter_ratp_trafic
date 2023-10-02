import 'package:get/get.dart';
import 'package:transit_alerts/app/data/models/rers_model.dart';

class HomeState {
  // isLoading
  final RxBool _isLoading = RxBool(true);
  set isLoading(value) => _isLoading.value = value;
  bool get isLoading => _isLoading.value;

  final RxList<TrafficResponse> _rersTrafficList = <TrafficResponse>[].obs;
  set rersTrafficList(value) => _rersTrafficList.value = value;
  List<TrafficResponse> get rersTrafficList => _rersTrafficList;

  final RxList<TrafficResponse> _metrosTrafficList = <TrafficResponse>[].obs;
  set metrosTrafficList(value) => _metrosTrafficList.value = value;
  List<TrafficResponse> get metrosTrafficList => _metrosTrafficList;

  final RxList<TrafficResponse> _tramwaysTrafficList = <TrafficResponse>[].obs;
  set tramwaysTrafficList(value) => _tramwaysTrafficList.value = value;
  List<TrafficResponse> get tramwaysTrafficList => _tramwaysTrafficList;
}
