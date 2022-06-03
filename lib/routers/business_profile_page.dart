import "package:flutter/material.dart";
import 'package:venuedashbusiness/utils/constants.dart';

class BusinessProfilePage extends StatelessWidget {
  const BusinessProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Ink(
            height: 70,
            width: size.width * .9,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(8)),
            ),
          ),
          Image.asset(
            "assets/graphics/home_venue_order_img.png",
          ),
        ],
      ),
    );
  }
}
