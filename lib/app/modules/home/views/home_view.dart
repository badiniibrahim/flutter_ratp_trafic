import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:transit_alerts/app/core/colors.style.dart';
import 'package:transit_alerts/app/core/texts.style.dart';
import 'package:transit_alerts/app/modules/home/controllers/home_controller.dart';
import 'package:transit_alerts/app/modules/home/views/metros_view.dart';
import 'package:transit_alerts/app/modules/home/views/rers_view.dart';
import 'package:transit_alerts/app/modules/home/views/tramways_view.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) {
        return DefaultTabController(
          length: 3,
          child: Scaffold(
            appBar: AppBar(
              elevation: 2.0,
              iconTheme: const IconThemeData(color: AppColors.black, size: 15),
              title: Text(
                "Mes Alertes",
                overflow: TextOverflow.ellipsis,
                style: IText.header1.copyWith(
                  fontFamily: GoogleFonts.inter().fontFamily,
                  letterSpacing: 1,
                  fontSize: 18,
                ),
              ),
              bottom: const TabBar(
                indicatorColor: AppColors.blue3,
                indicatorSize: TabBarIndicatorSize.tab,
                labelColor: AppColors.blue3,
                unselectedLabelColor: AppColors.white,
                labelStyle: IText.subtitle1,
                physics: NeverScrollableScrollPhysics(),
                tabs: [
                  Tab(text: "Rers", icon: Icon(Icons.directions_subway)),
                  Tab(text: "Metros", icon: Icon(Icons.directions_transit)),
                  Tab(text: "Tramways", icon: Icon(Icons.directions_bus)),
                ],
              ),
            ),
            body: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: TabBarView(
                children: [
                  RersView(false, path: 'rers'),
                  MetrosView(false, path: 'metros'),
                  TramwaysView(true, path: 'tramways')
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
