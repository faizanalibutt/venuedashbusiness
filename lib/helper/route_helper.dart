import 'package:get/route_manager.dart';
import 'package:venuedashbusiness/routers/bottom_bar_page.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/routers/splash_page.dart';

class RouteHelper {
  static const String initial = '/';
  static const String splash = '/splash';
  static const String signIn = '/sign-in';

  static String getInitialRoute() => initial;
  static String getSplashRoute() => splash;
  static String getSignInRoute() => signIn;

  static List<GetPage> routes = [
    GetPage(name: initial, page: () => BottomBarPage()),
    GetPage(name: splash, page: () => const SplashPage()),
    GetPage(name: signIn, page: () => const LoginPage()),
  ];
}
