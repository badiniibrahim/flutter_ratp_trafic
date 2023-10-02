import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:transit_alerts/app/modules/home/controllers/home_controller.dart';
import 'package:transit_alerts/app/modules/home/widgets/traffic_item_card.dart';

class RersView extends GetView<HomeController> {
  final String path;
  final bool isTramways;
  const RersView(this.isTramways, {super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    controller.getRersTraffic('rers');
    return Obx(
      () => Container(
        margin: const EdgeInsets.only(top: 20),
        child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller.state.rersTrafficList.length,
          itemBuilder: (BuildContext context, int index) {
            final resource = controller.state.rersTrafficList[index];
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
