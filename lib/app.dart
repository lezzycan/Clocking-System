import 'package:clocking_system/utils/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class ClockingApp extends StatelessWidget {
  const ClockingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
       title: 'Rent App',
     // theme:BlvTheme.lightTheme,
      initialRoute: RouterHelper.welcomeScreen,
      getPages: RouterHelper.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}