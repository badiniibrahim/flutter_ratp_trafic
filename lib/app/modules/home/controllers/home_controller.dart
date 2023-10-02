import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:transit_alerts/app/abstractions/i_controller.dart';
import 'package:transit_alerts/app/data/repositories/home_repository.dart';
import 'package:transit_alerts/app/modules/home/states.dart';

class HomeController extends GetxController with IController {
  final HomeState state = HomeState();
  final HomeRepository _repository = HomeRepository();

  Future<void> getRersTraffic(String path) async {
    actionPerform(
      action: () async {
        state.isLoading = true;
        final response = await _repository.getRersTraffic(path);
        state.rersTrafficList = response;
      },
      callback: () {
        state.isLoading = false;
      },
    );
  }

  Future<void> getMetrosTraffic(String path) async {
    actionPerform(
      action: () async {
        state.isLoading = true;
        final response = await _repository.getMetrosTraffic(path);
        state.metrosTrafficList = response;
      },
      callback: () {
        state.isLoading = false;
      },
    );
  }

  Future<void> getTramwaysTraffic(String path) async {
    actionPerform(
      action: () async {
        state.isLoading = true;
        final response = await _repository.getTramwaysTraffic(path);
        state.tramwaysTrafficList = response;
      },
      callback: () {
        state.isLoading = false;
      },
    );
  }
}
