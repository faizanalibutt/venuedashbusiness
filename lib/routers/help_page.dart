import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class HelpPage extends StatelessWidget {
  const HelpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: size.height * .04,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height * .07,
                child: Text(
                  "Need Help?",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * .03,
                  ),
                  SizedBox(
                    width: size.width * .15,
                    child: InkWell(
                      onTap: () => Get.back(),
                      child: Image.asset(
                        "assets/graphics/ic_back_button.png",
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * .87,
            child: const Padding(
              child: Center(child: Text("This page will be filled once"
              " requirements are cleared and app is in final form"),),
              padding: EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}