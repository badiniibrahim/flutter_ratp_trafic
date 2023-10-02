import 'package:get/get.dart';
import 'package:transit_alerts/app/modules/home/bindings/home_bindings.dart';
import 'package:transit_alerts/app/modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
  ];
}
