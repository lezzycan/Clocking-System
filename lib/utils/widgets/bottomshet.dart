import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void openModal (BuildContext context, Widget content) {
  Get.bottomSheet(
    Container(
      width: double.maxFinite,
      // padding: const EdgeInsets.symmetric(horizontal: 30.87, vertical: 48.87),
  decoration: ShapeDecoration(
    color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.86),
    ),
    ),
    child: content,
    ),
  
   isDismissible: true,
   isScrollControlled: true,
   useRootNavigator: true,elevation: 0
  );
}

Future<void> showCustomModal(
  BuildContext context,
  Widget customView, {
  backgroundColor = Colors.transparent,
  isDismissible = true,
  isScrollControlled = true,
}) async {
  await showModalBottomSheet<void>(
      backgroundColor: backgroundColor,
      isDismissible: isDismissible,
      isScrollControlled: isScrollControlled,
      context: context,
      builder: (BuildContext context) {
        return customView;
      });
}