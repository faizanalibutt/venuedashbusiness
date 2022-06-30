import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/routers/registration_page.dart';
import 'package:venuedashbusiness/routers/update_email_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';
import 'package:venuedashbusiness/widgets/rounded_password_field.dart';

import '../widgets/outlined_border_button_long.dart';

class VerifiedEmailPage extends StatefulWidget {
  const VerifiedEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifiedEmailPage> createState() => _VerifiedEmailPageState();
}

class _VerifiedEmailPageState extends State<VerifiedEmailPage> {
  @override
  Widget build(BuildContext context) {
    bool _isPwdVisible = true;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Login to your account",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: kBlackHeadingColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ))),
            const Text("", style: TextStyle(fontSize: 8))
          ],
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset(
            "assets/graphics/ic_back_button.png",
          ),
        ),
        leadingWidth: 80,
        shadowColor: Colors.transparent,
      ),
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: Column(
          children: [
            Text("Login to your account or update your email address",
                style: GoogleFonts.lato(textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 12, fontWeight: FontWeight.bold))),
            const SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Your Email",
                style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
              ),
            ),
            RoundedInputField(
              fieldWidth: .85,
              textInputType: TextInputType.emailAddress,
              onChanged: (value) {},
              color: kPrimaryColor,
              focus: false,
              textColor: kBlackFieldColor,
              cursorColor: kPrimaryColor,
            ),
            Container(
              padding: const EdgeInsets.only(left: 20),
              alignment: Alignment.topLeft,
              child: const Text(
                "Password",
                style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
              ),
            ),
            RoundedPasswordField(
              onChanged: (value) {},
              isPwdVisible: _isPwdVisible,
              pwdCallbackOn: () {
                setState(() {
                  _isPwdVisible = !_isPwdVisible;
                });
              },
              pwdCallbackOff: () {
                setState(() {
                  _isPwdVisible = !_isPwdVisible;
                });
              },
              textColor: kBlackFieldColor,
              borderColor: kPrimaryColor,
              iconColor: kPrimaryColor,
              cursorColor: kPrimaryColor,
            ),
            const SizedBox(
              height: 20.0,
            ),
            RoundedButtonLong(
              text: "Login",
              press: () async {
                Get.to(() => const VerifiedEmailPage());
              },
              imgName: 'assets/graphics/ic_logo_white_icon.png',
              color: kPrimaryColor,
              textColor: Colors.white,
              onPrimaryColor: Colors.white54,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
              child: Divider(
                color: kBlackColor30,
                height: 1,
              ),
            ),
            OutlinedBorderButtonLong(
                buttonWidth: .85,
                borderColor: kPrimaryColor,
                text: "Update Email Address",
                press: () => Get.to(() => const UpdateEmailPage()),
                color: kPrimaryColor,
                textColor: kPrimaryColor,
                imgName: 'assets/graphics/ic_update_email_green_icon.png'),
            const SizedBox(height: 20),
            Text(
              "Go Back to:",
              style: GoogleFonts.lato(
                textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 12),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: size.width * .85,
              child: Row(children: [
                Expanded(
                  child: OutlinedBorderButtonLong(
                    text: "Login",
                    press: () => Get.to(() => const LoginPage()),
                    textColor: kPrimaryColor,
                    borderColor: kPrimaryColor,
                    imgName: "assets/graphics/ic_logo_green_icon.png",
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: OutlinedBorderButtonLong(
                    text: "Register",
                    press: () => Get.to(() => RegistrationPage()),
                    textColor: kPrimaryColor,
                    borderColor: kPrimaryColor,
                    imgName: "assets/graphics/ic_register_green_icon.png",
                  ),
                ),
              ]),
            ),
          ],
        ),
      )),
    );
  }
}
