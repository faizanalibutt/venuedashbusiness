import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:venuedashbusiness/utils/app_constants.dart';

class ThemeController extends GetxController implements GetxService {
  final SharedPreferences sharedPreferences;

  ThemeController({required this.sharedPreferences}) {
    _loadCurrentTheme();
  }

  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  void _loadCurrentTheme() {
    _darkTheme = sharedPreferences.getBool(AppConstants.THEME) ?? false;
    update();
  }

  void _toggleTheme() {
    _darkTheme = !_darkTheme;
    sharedPreferences.setBool(AppConstants.THEME, _darkTheme);
    update();
  }
}
