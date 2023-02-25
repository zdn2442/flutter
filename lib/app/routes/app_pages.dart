import 'package:get/get.dart';

import 'package:tokped/app/modules/add_slider/bindings/add_slider_binding.dart';
import 'package:tokped/app/modules/add_slider/views/add_slider_view.dart';
import 'package:tokped/app/modules/detail/bindings/detail_binding.dart';
import 'package:tokped/app/modules/detail/views/detail_view.dart';
import 'package:tokped/app/modules/forgotPass/bindings/forgot_pass_binding.dart';
import 'package:tokped/app/modules/forgotPass/views/forgot_pass_view.dart';
import 'package:tokped/app/modules/home/bindings/home_binding.dart';
import 'package:tokped/app/modules/home/views/home_view.dart';
import 'package:tokped/app/modules/home_admin/bindings/home_admin_binding.dart';
import 'package:tokped/app/modules/home_admin/views/home_admin_view.dart';
import 'package:tokped/app/modules/login/bindings/login_binding.dart';
import 'package:tokped/app/modules/login/views/login_view.dart';
import 'package:tokped/app/modules/login_phone/bindings/login_phone_binding.dart';
import 'package:tokped/app/modules/login_phone/views/login_phone_view.dart';
import 'package:tokped/app/modules/otp/bindings/otp_binding.dart';
import 'package:tokped/app/modules/otp/views/otp_view.dart';
import 'package:tokped/app/modules/register/bindings/register_binding.dart';
import 'package:tokped/app/modules/register/views/register_view.dart';
import 'package:tokped/app/modules/slider_data/bindings/slider_data_binding.dart';
import 'package:tokped/app/modules/slider_data/views/slider_data_view.dart';
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
    GetPage(
      name: _Paths.LOGIN_PHONE,
      page: () => LoginPhoneView(),
      binding: LoginPhoneBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER_DATA,
      page: () => SliderDataView(),
      binding: SliderDataBinding(),
    ),
    GetPage(
      name: _Paths.ADD_SLIDER,
      page: () => AddSliderView(),
      binding: AddSliderBinding(),
    ),
  ];
}
