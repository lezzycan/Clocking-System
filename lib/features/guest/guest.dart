import 'package:clocking_system/utils/widgets/clk_textfield.dart';
import 'package:clocking_system/utils/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class GuestScreen extends StatelessWidget {
  const GuestScreen({super.key});

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
                        child: Stack(children: [
                          Container(
                            width: 402.w,
                            height: 400.h,
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
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 65.h,
                                ),
                                const Text('Guest/Visitors Form'),
                                const Text('Name'),
                                const ClkTextFieldWidget(),
                                const Text('Phone Number'),
                                const ClkTextFieldWidget(),
                                const Text('Employee\'s name'),
                                const ClkTextFieldWidget(),
                                const Text('Purpose of visit'),
                                const ClkTextFieldWidget(),
                                SizedBox(
                                  height: 10.h,
                                ),
                                CustomButton(
                                    onPressed: () {},
                                    child: const Text('Submit Form',
                                    style: TextStyle(color: Colors.white),
                                    ),
                                    
                                    )
                              ],
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 80.h,
                            decoration: const ShapeDecoration(
                              color: Color(0xFFF2FFEC),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                ),
                              ),
                            ),
                            child: Column(children: [
                              Text('11:28 am'),
                              Text(DateTime.now().toIso8601String()),
                            ],),
                          ),
                        ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
