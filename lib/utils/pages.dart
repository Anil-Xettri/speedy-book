import 'package:get/get.dart';
import 'package:speedy_book/controller/auth/forget_password_controller.dart';
import 'package:speedy_book/controller/auth/login_controller.dart';
import 'package:speedy_book/controller/auth/signup_controller.dart';
import 'package:speedy_book/controller/booking/booking_controller.dart';
import 'package:speedy_book/controller/booking/booking_detail_controller.dart';
import 'package:speedy_book/controller/cinemahall_controller.dart';
import 'package:speedy_book/controller/dashboard/change_password_controller.dart';
import 'package:speedy_book/controller/dashboard/dash_controller.dart';
import 'package:speedy_book/controller/dashboard/my_details_controller.dart';
import 'package:speedy_book/controller/movies/movie_controller.dart';
import 'package:speedy_book/controller/movies/theater_controller.dart';
import 'package:speedy_book/controller/payment_controller.dart';
import 'package:speedy_book/controller/splash_controller.dart';
import 'package:speedy_book/views/auth/forget_password_screen.dart';
import 'package:speedy_book/views/auth/login_screen.dart';
import 'package:speedy_book/views/auth/reset_password_screen.dart';
import 'package:speedy_book/views/auth/signup_screen.dart';
import 'package:speedy_book/views/booking/booking_details.dart';
import 'package:speedy_book/views/booking/bookings_seceen.dart';
import 'package:speedy_book/views/cinema_hall_screen.dart';
import 'package:speedy_book/views/dashboard/change_password_screen.dart';
import 'package:speedy_book/views/dashboard/dashscreen.dart';
import 'package:speedy_book/views/dashboard/my_details_screen.dart';
import 'package:speedy_book/views/movie/movie_screen.dart';
import 'package:speedy_book/views/movie/theater_screen.dart';
import 'package:speedy_book/views/payment_screen.dart';
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
  GetPage(
    name: CinemaHallScreen.routeName,
    page: () => CinemaHallScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => CinemaHallController());
      },
    ),
  ),
  GetPage(
    name: MovieScreen.routeName,
    page: () => MovieScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => MovieController());
      },
    ),
  ),
  GetPage(
    name: TheaterScreen.routeName,
    page: () => TheaterScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => TheaterController());
      },
    ),
  ),
  GetPage(
    name: BookingsScreen.routeName,
    page: () => BookingsScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => BookingController());
      },
    ),
  ),
  GetPage(
    name: BookingDetailScreen.routeName,
    page: () => BookingDetailScreen(),
    binding: BindingsBuilder(
      () {
        Get.lazyReplace(() => BookingDetailController());
      },
    ),
  ),
  GetPage(
    name: PaymentScreen.routeName,
    page: () => PaymentScreen(),
    binding: BindingsBuilder(() => Get.lazyPut(
          () => PaymentController(),
        )),
  ),
];
