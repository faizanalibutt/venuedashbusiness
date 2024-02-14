import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:venuedashbusiness/helper/route_helper.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/utils/dimensions.dart';
import 'package:venuedashbusiness/utils/images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey();
  late StreamSubscription<ConnectivityResult> _onConnectivityChanged;

  @override
  void initState() {
    super.initState();
    _onConnectivityChanged = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      bool isConnected = result == ConnectivityResult.wifi ||
          result == ConnectivityResult.mobile;
      isConnected
          ? const SizedBox()
          : ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: isConnected ? Colors.green : Colors.red,
        duration: Duration(seconds: isConnected ? 3 : 10),
        content: Text(
          isConnected ? 'Connected' : 'No Connection Available',
          textAlign: TextAlign.center,
        ),
      ));
      if (isConnected) {
        _route();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();

    _onConnectivityChanged.cancel();
  }

  void _route() {
    Future.delayed(const Duration(seconds: 2), () async {
      Get.offNamed(RouteHelper.signIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _globalKey,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Image.asset("assets/graphics/img_venue_dash_icon.png"),
          ]),
        ),
      ),
    );
  }
}
