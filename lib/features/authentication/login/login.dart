import 'package:clocking_system/features/admin/admin.dart';
import 'package:clocking_system/features/authentication/create_account/create_account.dart';
import 'package:clocking_system/features/authentication/welcome/welcoome_controller.dart';
import 'package:clocking_system/features/home/home.dart';
import 'package:clocking_system/utils/widgets/clk_textfield.dart';
import 'package:clocking_system/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                  color: const Color(0XFF1C6604).withOpacity(0.8)),
              Center(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset("assets/svgs/vesti.svg"),
                      SizedBox(
                        height: 30.h,
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(216, 0, 226, 0),
                          child: Container(
                            width: 402.w,
                            height: 320.h,
                            padding: const EdgeInsets.all(32),
                            clipBehavior: Clip.antiAlias,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              shadows: const [
                                BoxShadow(
                                  color: Color(0x19000000),
                                  blurRadius: 24,
                                  offset: Offset(0, 8),
                                  spreadRadius: 0,
                                )
                              ],
                            ),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text(
                                    'Log In',
                                    style: TextStyle(
                                      color: Color(0xFF0C0909),
                                      fontSize: 20,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  const Text(
                                    'Enter your work email and password',
                                    style: TextStyle(
                                      color: Color(0xFF0C0909),
                                      fontSize: 12,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w300,
                                      height: 0.12,
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.email_outlined,
                                        color: Colors.black,
                                        size: 8.sp,
                                      ),
                                      const SizedBox(
                                        width: 6,
                                      ),
                                      const Text(
                                        'Email Address',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Söhne',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  const ClkTextFieldWidget(
                                    hintText: 'Add email address',
                                    borderWidth: 0.0,
                                    borderColor: Colors.white,
                                    backgroundColor: Color(0xFFF6F7F9),
                                  ),
                                  SizedBox(height: 11.h),
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.lock_open_outlined,
                                        color: Colors.black,
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Text(
                                        'Password',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 12,
                                          fontFamily: 'Söhne',
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 10.h),
                                  const ClkTextFieldWidget(
                                    hintText: 'password',
                                    obscureText: true,
                                    maxLines: 1,
                                    borderWidth: 0.0,
                                    borderColor: Colors.white,
                                    backgroundColor: Color(0xFFF6F7F9),
                                    suffixIcon: Icon(Icons.visibility_off),
                                  ),
                                  SizedBox(height: 20.h),
                                  InkWell(
                                    onTap: () {
                                      Get.to(() => const CreateAccount());
                                    },
                                    child: const Text.rich(
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'New to this? ',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.44,
                                              fontFamily: 'Söhne',
                                              fontWeight: FontWeight.w500,
                                              height: 0.14,
                                            ),
                                          ),
                                          TextSpan(
                                            text: 'Enrol Here',
                                            style: TextStyle(
                                              color: Color(0xFF62943B),
                                              fontSize: 15.44,
                                              fontFamily: 'Söhne',
                                              fontWeight: FontWeight.w500,
                                              height: 0.14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 15.h),
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 6,
                                        child: CustomButton(
                                          width: double.infinity,
                                          height: 40.h,
                                          onPressed: () {
                                            Get.put(WelcomeController()).type ==
                                                    'Admin'
                                                ? Get.to(
                                                    () => const AdminScreen())
                                                : showDialog(
                                                    context: context,
                                                    barrierDismissible: true,
                                                    builder: (context) {
                                                      return Dialog(
                                                        elevation: 0,
                                                        insetPadding:
                                                            const EdgeInsets
                                                                .fromLTRB(
                                                                216, 30, 226, 0),
                                                        backgroundColor:
                                                            Colors.white,
                                                        shape:
                                                            RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(30.0),
                                                        ),
                                                        child: Container(
                                                          height: 210.h,
                                                          width: 402.w,
                                                          decoration:
                                                              ShapeDecoration(
                                                            color: Colors.white,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                            shadows: const [
                                                              BoxShadow(
                                                                color: Color(
                                                                    0x33000000),
                                                                blurRadius: 27.60,
                                                                offset:
                                                                    Offset(0, 8),
                                                                spreadRadius: 0,
                                                              )
                                                            ],
                                                          ),
                                                          child: buildLoginWidget(
                                                              context, (){
                                                                  Get.to(() => const HomeScreen());
                                                              }),
                                                        ),
                                                      );
                                                    });
                                          },
                                          child: const Text(
                                            'Log In',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontFamily: 'Söhne',
                                              fontWeight: FontWeight.w700,
                                              overflow: TextOverflow.ellipsis
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 10.w,
                                      ),
                                      Expanded(
                                          child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                              context: context,
                                              barrierDismissible: true,
                                              builder: (context) {
                                                return Dialog(
                                                  elevation: 0,
                                                  // insetPadding:
                                                  //     const EdgeInsets.fromLTRB(
                                                  //         216, 0, 226, 0),
                                                  backgroundColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.0),
                                                  ),
                                                  child: Container(
                                                    height: 290.h,
                                                    width: 402.w,
                                                    decoration: ShapeDecoration(
                                                      color: Colors.white,
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                12),
                                                      ),
                                                      shadows: const [
                                                        BoxShadow(
                                                          color:
                                                              Color(0x33000000),
                                                          blurRadius: 27.60,
                                                          offset: Offset(0, 8),
                                                          spreadRadius: 0,
                                                        )
                                                      ],
                                                    ),
                                                    child: builderWidget(context),
                                                  ),
                                                );
                                              });
                                        },
                                        child: Icon(
                                          Icons.fingerprint,
                                          color: const Color(0XFF67A948),
                                          size: 25.sp,
                                        ),
                                      ))
                                    ],
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

Widget builderWidget(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                Get.back(closeOverlays: true);
              },
              child: Container(
                height: 10.w,
                width: 10.w,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(
                      width: 1.0,
                      color: const Color(0XFFD70D0D),
                    )),
                child: const Icon(
                  Icons.close,
                  color: Color(0XFFD70D0D),
                  size: 14,
                ),
              ),
            )
          ],
        ),
        const Text(
          'Fingerprint Authentication',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Söhne',
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        SizedBox(height: 5.h),
        const Text(
          'Please use fingerprint to login',
          style: TextStyle(
            color: Color(0xFF0C0909),
            fontSize: 15,
            fontFamily: 'Söhne',
            fontWeight: FontWeight.w300,
            height: 0.10,
          ),
        ),
        SizedBox(
          height: 25.h,
        ),
        Icon(
          Icons.fingerprint,
          color: const Color(0XFF67A948),
          size: 55.sp,
        ),
      ],
    ),
  );
}

Widget buildLoginWidget(BuildContext context, VoidCallback onTap) {
  return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Enter your OTP',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Söhne',
              fontWeight: FontWeight.w500,
              height: 0,
            ),
          ),
          SizedBox(height: 5.h),
          const Text(
            'Enter the OTP sent too your work email',
            style: TextStyle(
              color: Color(0xFF0C0909),
              fontSize: 15,
              fontFamily: 'Söhne',
              fontWeight: FontWeight.w300,
              height: 0.10,
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          const Text(
            '****',
            style: TextStyle(
              color: Color(0xFF67A948),
              fontSize: 96,
              fontFamily: 'Söhne',
              fontWeight: FontWeight.w500,
              height: 0,
              // letterSpacing: 16.32,
            ),
          ),
          // SizedBox(height:10.h),
          const ClkTextFieldWidget(
            hintText: 'One Time Password',
            borderWidth: 0.0,
            borderColor: Colors.white,
            backgroundColor: Color(0xFFF6F7F9),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomButton(
            width: double.infinity,
            height: 30.h,
            onPressed: onTap,
            child: const Text(
              'Log In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Söhne',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
