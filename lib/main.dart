import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venuedashbusiness/routers/welcome_page.dart';

void main() => {runApp(const VenueDashBusiness())};

class VenueDashBusiness extends StatelessWidget {
  const VenueDashBusiness({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(debugShowCheckedModeBanner: false, home: WelcomePage());
  }
}
