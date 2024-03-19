import 'package:clocking_system/features/admin/admin_widgets.dart';
import 'package:clocking_system/features/authentication/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminScreen extends StatelessWidget {
  const AdminScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
                padding: const EdgeInsets.all(48.0),
                child: Column(children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(''),
                      Image.asset('assets/pngs/switch-body.png'),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Thursday, 4th January 2024',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Söhne',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Text(
                        '9:00 am',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontFamily: 'Söhne',
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    width: double.infinity,
                    height: 66.82.h,
                    padding: const EdgeInsets.all(23.41),
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF2FFEC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(19.51),
                      ),
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: const AssetImage(
                          "assets/pngs/samuel.png",
                        ),
                        radius: 20.r,
                      ),
                      title: const Text(
                        'Admin',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontFamily: 'Söhne',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      subtitle: const Text(
                        'Human Resource Manager',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontFamily: 'Söhne',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                      trailing: const InkWell(
                        child: CircleAvatar(
                            backgroundColor: Color(0xFFC7FFAD),
                            child: Icon(Icons.tune)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                          onTap: () {
                            showDialog(
                                context: context,
                                barrierDismissible: true,
                                builder: (context) {
                                  return Dialog(
                                    elevation: 0,
                                    insetPadding: const EdgeInsets.fromLTRB(
                                        216, 0, 226, 0),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30.0),
                                    ),
                                    child: Container(
                                      height: 220.h,
                                      width: 402.w,
                                      decoration: ShapeDecoration(
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(12),
                                        ),
                                        shadows: const [
                                          BoxShadow(
                                            color: Color(0x33000000),
                                            blurRadius: 27.60,
                                            offset: Offset(0, 8),
                                            spreadRadius: 0,
                                          )
                                        ],
                                      ),
                                      child: buildLoginWidget(context, (){
                                        
                                      }),
                                    ),
                                  );
                                });
                          },
                          child: const ReusableBox(
                            color: Color(0xFFF6F8FF),
                            asset: 'assets/svgs/staff.svg',
                            miniColor: Color(0xFFDFE3FF),
                            title: 'Staff',
                          )),
                      SizedBox(
                        width: 15.w,
                      ),
                      const ReusableBox(
                        color: Color(0xFFFBF3FF),
                        asset:'assets/svgs/guest.svg' ,
                        miniColor: Color(0xFFF0D0FF),
                        title: 'Guest',
                      )
                    ],
                  )
                ]))));
  }
}
