import 'package:clocking_system/features/authentication/create_account/create_account_controller.dart';
import 'package:clocking_system/utils/routes/app_router.dart';
import 'package:clocking_system/utils/widgets/clk_textfield.dart';
import 'package:clocking_system/utils/widgets/custom_button.dart';
import 'package:clocking_system/utils/widgets/reusable_dropdown.dart';
import 'package:clocking_system/utils/widgets/validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final createCtrl = Get.put(CreateAccountController());
    return Container(
      height: MediaQuery.of(context).size.height,
      width: double.infinity,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/pngs/bg2.png"), fit: BoxFit.cover)),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: Stack(children: [
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
                    child: Form(
                      child: Container(
                        width: 402,
                        height: 751,
                        padding: const EdgeInsets.only(top: 32),
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
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              const Text(
                                'Create Your Account',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 24,
                                  fontFamily: 'Söhne',
                                  fontWeight: FontWeight.w500,
                                  height: 0,
                                ),
                              ),
                              SizedBox(
                                height: 20.h,
                              ),
                              ClkTextFieldWidget(
                                backgroundColor: const Color(0xFFF6FEF3),
                                borderSide: const BorderSide(
                                    width: 0.50, color: Color(0xFF67A948)),
                                borderRadius: BorderRadius.circular(5),
                                hintText: 'Samuel Ariyo',
                                labelText: 'Full Name',
                                validator: context.validateFieldNotEmpty,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              ClkTextFieldWidget(
                                backgroundColor: const Color(0xFFF6FEF3),
                                validator: context.validateEmailAddress,
                                borderSide: const BorderSide(
                                    width: 0.50, color: Color(0xFF67A948)),
                                borderRadius: BorderRadius.circular(5),
                                hintText: 'Email',
                                labelText: 'samuel@gmail.com',
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              ReusableDropDownWidget(value: createCtrl.department, hint: 'departments',
                              validator: createCtrl.dropdownValidator,
                              items: createCtrl.departments.map((e) {
                                return DropdownMenuItem(child: Text(e), value: e,);
                              }).toList(),
                              onChanged: createCtrl.updateDepartment,
                              
                              ),
                                SizedBox(
                                height: 15.h,
                              ),
                              ClkTextFieldWidget(
                                backgroundColor: const Color(0xFFF6FEF3),
                                validator: context.validateFieldNotEmpty,
                                borderSide: const BorderSide(
                                    width: 0.50, color: Color(0xFF67A948)),
                                borderRadius: BorderRadius.circular(5),
                                hintText: '********',
                                labelText: 'Password',
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 15.h,
                              ),
                              ClkTextFieldWidget(
                                backgroundColor: const Color(0xFFF6FEF3),
                                validator: (value) {
                                  context.validateConfirmPassword(
                                      value: value, initialPassword: '');
                                  return null;
                                },
                                borderSide: const BorderSide(
                                    width: 0.50, color: Color(0xFF67A948)),
                                borderRadius: BorderRadius.circular(5),
                                hintText: '*****',
                                labelText: 'Password',
                                obscureText: true,
                              ),
                              SizedBox(
                                height: 25.h,
                              ),
                              CustomButton(
                                  onPressed: () => Get.toNamed(RouterHelper.loginScreen),
                                  child: const Text(
                                    'Create An Account',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Söhne',
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )),
                              SizedBox(
                                height: 10.h,
                              ),
                              const Text.rich(
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Already  have an account ?',
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
                                      text: ' in',
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
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
