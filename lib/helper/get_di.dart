import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:venuedashbusiness/controller/theme_controller.dart';

Future<void> init() async {
  // Core
  final sharedPreferences = await SharedPreferences.getInstance();
  Get.lazyPut(() => sharedPreferences);

  // Controller
  Get.lazyPut(() => ThemeController(sharedPreferences: Get.find()));

}
