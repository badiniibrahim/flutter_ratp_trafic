import 'package:flutter/material.dart';
import 'package:transit_alerts/app/core/colors.style.dart';
import 'package:transit_alerts/app/core/texts.style.dart';
import 'package:transit_alerts/app/core/utilities/image_utils.dart';
import 'package:transit_alerts/app/data/models/rers_model.dart';

class TrafficItemCard extends StatelessWidget {
  final TrafficResponse response;
  final bool isTramways;

  const TrafficItemCard({
    Key? key,
    required this.response,
    required this.isTramways,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Card(
        color: AppColors.grey4,
        child: ListTile(
          leading: Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: getImage(response.line ?? "", isTramways),
              ),
            ),
          ),
          title: Text(
            response.title!.toUpperCase(),
            overflow: TextOverflow.ellipsis,
            style: IText.header4Black.copyWith(
              fontWeight: FontWeight.bold,
              fontFamily: 'muli',
              color: AppColors.white,
            ),
          ),
          subtitle: Text(response.message ?? ""),
        ),
      ),
    );
  }
}
