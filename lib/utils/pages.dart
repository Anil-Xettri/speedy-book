import 'package:get/get.dart';
import 'package:speedy_book/controller/auth/forget_password_controller.dart';
import 'package:speedy_book/controller/auth/login_controller.dart';
import 'package:speedy_book/controller/auth/signup_controller.dart';
import 'package:speedy_book/controller/dashboard/change_password_controller.dart';
import 'package:speedy_book/controller/dashboard/dash_controller.dart';
import 'package:speedy_book/controller/dashboard/my_details_controller.dart';
import 'package:speedy_book/controller/splash_controller.dart';
import 'package:speedy_book/views/auth/forget_password_screen.dart';
import 'package:speedy_book/views/auth/login_screen.dart';
import 'package:speedy_book/views/auth/reset_password_screen.dart';
import 'package:speedy_book/views/auth/signup_screen.dart';
import 'package:speedy_book/views/dashboard/change_password_screen.dart';
import 'package:speedy_book/views/dashboard/dashscreen.dart';
import 'package:speedy_book/views/dashboard/my_details_screen.dart';
import 'package:speedy_book/views/splash_screen.dart';

var pages = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => SplashScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => SplashController());
      },
    ),
  ),
  GetPage(
    name: LoginScreen.routeName,
    page: () => LoginScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => LoginController());
      },
    ),
  ),
  GetPage(
    name: SignupScreen.routeName,
    page: () => SignupScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => SignUpController());
      },
    ),
  ),
  GetPage(
    name: ForgetPassworScreen.routeName,
    page: () => ForgetPassworScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => ForgetPasswordController());
      },
    ),
  ),
  GetPage(
    name: DashScreen.routeName,
    page: () => DashScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => DashController());
      },
    ),
  ),
  GetPage(
    name: MyDetailsScreen.routeName,
    page: () => MyDetailsScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => MyDetailsController());
      },
    ),
  ),
  GetPage(
    name: ChangePasswordScreen.routeName,
    page: () => ChangePasswordScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => ChangePasswordController());
      },
    ),
  ),
  GetPage(
    name: ResetPasswordScreen.routeName,
    page: () => ResetPasswordScreen(),
  ),
];
