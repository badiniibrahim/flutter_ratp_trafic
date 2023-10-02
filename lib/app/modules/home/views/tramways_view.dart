import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transit_alerts/app/modules/home/controllers/home_controller.dart';
import 'package:transit_alerts/app/modules/home/widgets/traffic_item_card.dart';

class TramwaysView extends GetView<HomeController> {
  final String path;
  final bool isTramways;

  const TramwaysView(this.isTramways, {super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    controller.getTramwaysTraffic('tramways');
    return Obx(
      () => Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.state.tramwaysTrafficList.length,
          itemBuilder: (BuildContext context, int index) {
            final resource = controller.state.tramwaysTrafficList[index];
            return TrafficItemCard(
              response: resource,
              isTramways: isTramways,
            );
          },
        ),
      ),
    );
  }
}
