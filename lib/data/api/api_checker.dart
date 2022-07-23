import 'package:get/get.dart';
import 'package:venuedashbusiness/widgets/custom_snackbar.dart';

class ApiChecker {
  static void checkApi(Response response) {
    if (response.statusCode == 401) {
      //Get.find<SplashController>().removeSharedData();
      //Get.find<AuthController>().stopLocationRecord();
      //Get.offAllNamed(RouteHelper.getSignInRoute());
    } else {
      showCustomSnackBar(response.statusText!);
    }
  }
}
