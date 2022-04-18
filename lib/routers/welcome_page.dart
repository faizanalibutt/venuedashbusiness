import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/controller/text_controller.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/routers/registration_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button.dart';
import 'package:venuedashbusiness/widgets/rounded_button.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Get.put(TextController());
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Material(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: size.height * .04),
            Image.asset("assets/graphics/welcome_logo.png",
                height: size.height * .15),
            SizedBox(height: size.height * .01),
            SizedBox(
                height: size.height * .05,
                child: Text("Business App",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    )))),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SvgPicture.asset(
                  "assets/graphics/images/welcome_illustration.svg",
                  height: size.height * .3),
            ),
            SizedBox(
              height: size.height * .05,
            ),
            SizedBox(
              height: size.height * .4,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: SvgPicture.asset(
                      "assets/graphics/images/welcome_lower_img.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(children: [
                    SizedBox(
                      height: size.height * .11,
                    ),
                    Container(
                        height: size.height * .05,
                        padding: const EdgeInsets.only(left: 30.0),
                        alignment: Alignment.topLeft,
                        child: const FittedBox(
                            child: Text(
                          "Welcome!",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ))),
                    Container(
                        height: size.height * .08,
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        alignment: Alignment.topLeft,
                        child: const AutoSizeText(
                          "Mauris fermentum justo eu finibus blandit. Maecenas"
                          "congue luctus dolor, blandit auctor lacus pellentesque a.",
                          style:
                              TextStyle(color: Color(0x88FFFFFF), fontSize: 16),
                          minFontSize: 8,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        )),
                    SizedBox(
                        height: size.height * .14,
                        child: SingleChildScrollView(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedBorderButton(
                                  text: "Register",
                                  press: () => Get.to(() => RegistrationPage()),
                                  imgName:
                                      "assets/graphics/welcome_register_icon.png"),
                              const SizedBox(width: 10),
                              RoundedButton(
                                text: "Login",
                                press: () => Get.to(() => const LoginPage()),
                                color: Colors.white,
                                textColor: kPrimaryColor,
                                imgName:
                                    "assets/graphics/welcome_login_icon.png",
                              ),
                            ],
                          ),
                        )),
                    SizedBox(height: size.height * .01),
                  ]),
                ],
              ),
            ),
          ],
        ));
  }
}
