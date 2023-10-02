import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transit_alerts/app/modules/home/controllers/home_controller.dart';
import 'package:transit_alerts/app/modules/home/widgets/traffic_item_card.dart';

class MetrosView extends GetView<HomeController> {
  final String path;
  final bool isTramways;

  const MetrosView(this.isTramways, {super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    controller.getMetrosTraffic('metros');
    return Obx(
      () => Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: controller.state.metrosTrafficList.length,
          itemBuilder: (BuildContext context, int index) {
            final resource = controller.state.metrosTrafficList[index];
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
