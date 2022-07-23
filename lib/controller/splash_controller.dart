import 'package:get/get_state_manager/get_state_manager.dart';

class SplashController extends GetxController implements GetxService {
  
  bool _firstTimeConnectionCheck = true;

  DateTime get currentTime => DateTime.now();
  bool get firstTimeConnectionCheck => _firstTimeConnectionCheck;

  void setFirstTimeConnectionCheck(bool isChecked) {
    _firstTimeConnectionCheck = isChecked;
  }
}
