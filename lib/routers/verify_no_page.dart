import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/forget_email_page.dart';
import 'package:venuedashbusiness/routers/verified_email_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class VerifyNoPage extends StatelessWidget {
  const VerifyNoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
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
                    "Enter Verification Code",
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
                      width: size.width * .025,
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
            Container(
                height: size.height * .1,
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                alignment: Alignment.topLeft,
                child: AutoSizeText(
                  'We have sent you a four digit code for verification on your'
                  'phone number "+1 234 567 890".',
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    color: kBlackSubHeadingColor,
                    fontSize: 12,
                  )),
                  minFontSize: 8,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                )),
            SizedBox(
              height: size.height * .75,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(
                      "assets/graphics/images/verify_no_image_bg.svg",
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RoundedButtonLong(
                      text: "Verify",
                      press: () async {
                        Get.to(() => const VerifiedEmailPage());
                      },
                      imgName: 'assets/graphics/ic_okay_icon.png',
                      color: kPrimaryColor,
                      textColor: Colors.white,
                      onPrimaryColor: Colors.white54,
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
                      child: Divider(
                        color: kBlackColor30,
                        height: 1,
                      ),
                    ),
                    SizedBox(
                      width: size.width * .86,
                      child: Row(children: [
                        Expanded(
                          child: OutlinedBorderButtonLong(
                            text: "Change Number",
                            press: () {
                              Get.back();
                              const ForgetEmailPage();
                            },
                            textColor: kPrimaryColor,
                            borderColor: kPrimaryColor,
                            imgName:
                                "assets/graphics/ic_change_no_green_icon.png",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: OutlinedBorderButtonLong(
                            text: "Resend Code",
                            press: () {
                              Get.back();
                            },
                            textColor: kPrimaryColor,
                            borderColor: kPrimaryColor,
                            imgName: "assets/graphics/ic_resend_green_icon.png",
                          ),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
