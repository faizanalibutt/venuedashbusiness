import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/verify_no_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';

class ForgetEmailPage extends StatelessWidget {
  const ForgetEmailPage({Key? key}) : super(key: key);

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
                    "Forgot Email?",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                        color: kBlackHeadingColor,
                        fontSize: 24,
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
                  "Verify the phone number associated with your account."
                  " So, you'll be able to update your email address. "
                  "We will send you a four digit code for verification.",
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
                      "assets/graphics/images/forgot_email_image_bg.svg",
                    ),
                    SizedBox(
                      height: size.height * .05,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 50),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Phone Number",
                        style: TextStyle(
                            color: kBlackSubHeadingColor, fontSize: 10),
                      ),
                    ),
                    RoundedInputField(
                      textInputType: TextInputType.phone,
                      onChanged: (value) {},
                      focus: true,
                      color: kPrimaryColor,
                      textColor: kBlackFieldColor,
                      cursorColor: kPrimaryColor,
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    RoundedButtonLong(
                      text: "Send Verification Code",
                      press: () async {
                        Get.to(() => const VerifyNoPage());
                      },
                      imgName: 'assets/graphics/ic_forget_reset_img.png',
                      color: kPrimaryColor,
                      textColor: Colors.white,
                      onPrimaryColor: Colors.white54,
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
