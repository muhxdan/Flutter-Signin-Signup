import 'package:get/get.dart';

import 'package:welcome_signin_signup/app/modules/home/bindings/home_binding.dart';
import 'package:welcome_signin_signup/app/modules/home/views/welcome_view.dart';
import 'package:welcome_signin_signup/app/modules/signin/bindings/signin_binding.dart';
import 'package:welcome_signin_signup/app/modules/signin/views/signin_view.dart';
import 'package:welcome_signin_signup/app/modules/signup/bindings/signup_binding.dart';
import 'package:welcome_signin_signup/app/modules/signup/views/signup_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => WelcomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
      page: () => SigninView(),
      binding: SigninBinding(),
    ),
  ];
}
