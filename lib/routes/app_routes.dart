import 'package:two_hand/presentation/splash_screen/splash_screen.dart';
import 'package:two_hand/presentation/splash_screen/binding/splash_binding.dart';
import 'package:two_hand/presentation/registration_screen/registration_screen.dart';
import 'package:two_hand/presentation/registration_screen/binding/registration_binding.dart';
import 'package:two_hand/presentation/login_screen/login_screen.dart';
import 'package:two_hand/presentation/login_screen/binding/login_binding.dart';
import 'package:two_hand/presentation/profile_screen/profile_screen.dart';
import 'package:two_hand/presentation/profile_screen/binding/profile_binding.dart';
import 'package:two_hand/presentation/homepage_screen/homepage_screen.dart';
import 'package:two_hand/presentation/homepage_screen/binding/homepage_binding.dart';
import 'package:two_hand/presentation/post_items_screen/post_items_screen.dart';
import 'package:two_hand/presentation/post_items_screen/binding/post_items_binding.dart';
import 'package:two_hand/presentation/mpesa_screen/mpesa_screen.dart';
import 'package:two_hand/presentation/mpesa_screen/binding/mpesa_binding.dart';
import 'package:two_hand/presentation/radio_screen/radio_screen.dart';
import 'package:two_hand/presentation/radio_screen/binding/radio_binding.dart';
import 'package:two_hand/presentation/tv_screen/tv_screen.dart';
import 'package:two_hand/presentation/tv_screen/binding/tv_binding.dart';
import 'package:two_hand/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:two_hand/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static String splashScreen = '/splash_screen';

  static String registrationScreen = '/registration_screen';

  static String loginScreen = '/login_screen';

  static String profileScreen = '/profile_screen';

  static String homepageScreen = '/homepage_screen';

  static String postItemsScreen = '/post_items_screen';

  static String mpesaScreen = '/mpesa_screen';

  static String radioScreen = '/radio_screen';

  static String tvScreen = '/tv_screen';

  static String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: registrationScreen,
      page: () => RegistrationScreen(),
      bindings: [
        RegistrationBinding(),
      ],
    ),
    GetPage(
      name: loginScreen,
      page: () => LoginScreen(),
      bindings: [
        LoginBinding(),
      ],
    ),
    GetPage(
      name: profileScreen,
      page: () => ProfileScreen(),
      bindings: [
        ProfileBinding(),
      ],
    ),
    GetPage(
      name: homepageScreen,
      page: () => HomepageScreen(),
      bindings: [
        HomepageBinding(),
      ],
    ),
    GetPage(
      name: postItemsScreen,
      page: () => PostItemsScreen(),
      bindings: [
        PostItemsBinding(),
      ],
    ),
    GetPage(
      name: mpesaScreen,
      page: () => MpesaScreen(),
      bindings: [
        MpesaBinding(),
      ],
    ),
    GetPage(
      name: radioScreen,
      page: () => RadioScreen(),
      bindings: [
        RadioBinding(),
      ],
    ),
    GetPage(
      name: tvScreen,
      page: () => TvScreen(),
      bindings: [
        TvBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    )
  ];
}
