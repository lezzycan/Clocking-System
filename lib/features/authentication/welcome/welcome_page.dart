import 'package:clocking_system/features/authentication/welcome/welcoome_controller.dart';
import 'package:clocking_system/features/guest/guest.dart';
import 'package:clocking_system/utils/routes/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final welcCtrl   = Get.put(WelcomeController());
    return Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/pngs/bg2.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  color: const Color(0XFF1C6604).withOpacity(0.9)),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset("assets/svgs/vesti.svg"),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      width: 402,
                      height: 296,
                      padding: const EdgeInsets.all(32),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: 188,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: (){
                                    welcCtrl.type = 'Employee';
                                    Get.toNamed(RouterHelper.loginScreen);
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33, vertical: 31),
                                    decoration: ShapeDecoration(
                                      color: const Color(0xFF67A948),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Text(
                                      'Employee',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 32,
                                        fontFamily: 'Söhne',
                                        fontWeight: FontWeight.w500,
                                        height: 0.02,
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 28),
                                GestureDetector(
                                  onTap: (){
 Get.to(()=> const GuestScreen())    ; 
                                  },
                                  child: Container(
                                    width: double.infinity,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 33, vertical: 31),
                              decoration: ShapeDecoration(
                                      color: const Color(0xFF67A948),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(12),
                                      ),
                                    ),
                                    child: const Row(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          'Guest',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 32,
                                            fontFamily: 'Söhne',
                                            fontWeight: FontWeight.w500,
                                            height: 0.02,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 26),
                          InkWell(
                            onTap: (){
                              welcCtrl.type = 'Admin';
                              Get.toNamed(RouterHelper.loginScreen);
                            },
                            child: const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Admin?',
                                    style: TextStyle(
                                      color: Color(0xFF13280A),
                                      fontSize: 14,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w300,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' ',
                                    style: TextStyle(
                                      color: Color(0xFF13280A),
                                      fontSize: 14,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Log',
                                    style: TextStyle(
                                      color: Color(0xFF67A948),
                                      fontSize: 14,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' in here',
                                    style: TextStyle(
                                      color: Color(0xFF67A948),
                                      fontSize: 14,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}