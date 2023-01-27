import 'package:get/get.dart';

import 'package:tokped/app/modules/detail/bindings/detail_binding.dart';
import 'package:tokped/app/modules/detail/views/detail_view.dart';
import 'package:tokped/app/modules/forgotPass/bindings/forgot_pass_binding.dart';
import 'package:tokped/app/modules/forgotPass/views/forgot_pass_view.dart';
import 'package:tokped/app/modules/home/bindings/home_binding.dart';
import 'package:tokped/app/modules/home/views/home_view.dart';
import 'package:tokped/app/modules/login/bindings/login_binding.dart';
import 'package:tokped/app/modules/login/views/login_view.dart';
import 'package:tokped/app/modules/register/bindings/register_binding.dart';
import 'package:tokped/app/modules/register/views/register_view.dart';
import 'package:tokped/app/modules/splash/bindings/splash_binding.dart';
import 'package:tokped/app/modules/splash/views/splash_view.dart';
import 'package:tokped/app/modules/verify/bindings/verify_binding.dart';
import 'package:tokped/app/modules/verify/views/verify_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PASS,
      page: () => ForgotPassView(),
      binding: ForgotPassBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY,
      page: () => VerifyView(),
      binding: VerifyBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
  ];
}
