import 'package:clocking_system/features/authentication/login/login.dart';
import 'package:clocking_system/features/authentication/welcome/welcome_page.dart';
import 'package:get/get.dart';

class RouterHelper {
 static const String loginScreen = '/login';
 static const String welcomeScreen = '/';



  static List<GetPage> routes =  [
     GetPage(
        name: welcomeScreen,
        page: () => const WelcomePage(),
       // binding: LoginScreenBinding(),
        transition: Transition.rightToLeftWithFade),
     GetPage(
        name: loginScreen,
        page: () => const LoginScreen(),
       // binding: LoginScreenBinding(),
        transition: Transition.rightToLeftWithFade),
  ];
}