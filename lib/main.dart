import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venuedashbusiness/controller/theme_controller.dart';
import 'package:venuedashbusiness/helper/route_helper.dart';
import 'package:venuedashbusiness/theme/dark_theme.dart';
import 'package:venuedashbusiness/theme/light_theme.dart';
import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const VenueDashBusiness());
}

class VenueDashBusiness extends StatelessWidget {
  const VenueDashBusiness({
    Key? key,
  }) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(builder: (themeController) {
      return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Get.key,
        theme: themeController.darkTheme ? dark : light,
        initialRoute: RouteHelper.getSplashRoute(),
        getPages: RouteHelper.routes,
      );
    });
  }
}
