import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/forget_email_page.dart';
import 'package:venuedashbusiness/routers/forget_pwd_page.dart';
import 'package:venuedashbusiness/routers/home_page.dart';
import 'package:venuedashbusiness/routers/registration_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';
import 'package:venuedashbusiness/widgets/rounded_password_field.dart';
import 'package:venuedashbusiness/widgets/tap_rich_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isRemember = false;
  bool _isPwdVisible = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const SizedBox(height: 40),
            Image.asset("assets/graphics/img_venue_dash_icon.png"),
            const SizedBox(height: 20),
            Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(
                    "assets/graphics/images/account_bg.svg",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(children: [
                  const SizedBox(height: 90),
                  Container(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    alignment: Alignment.center,
                    child: FittedBox(
                        child: Text(
                      "Login To Your Account.",
                      style: GoogleFonts.lato(
                        textStyle: const TextStyle(color: Colors.white, fontSize: 24),
                      ),
                    )),
                  ),
                  const SizedBox(height: 5),
                  Container(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    alignment: Alignment.topCenter,
                    child: const FittedBox(
                        child: Text(
                      "Please enter your login details.",
                      style: TextStyle(color: kWhite500Color, fontSize: 12),
                    )),
                  ),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    alignment: Alignment.topLeft,
                    child: Text("Business Email", style: GoogleFonts.lato(textStyle: const TextStyle(color: kWhite500Color, fontSize: 10))),
                  ),
                  RoundedInputField(
                    textInputType: TextInputType.name,
                    onChanged: (value) {},
                    focus: true,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 50),
                    alignment: Alignment.topLeft,
                    child: Text("Password",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: kWhite500Color, fontSize: 10),
                        )),
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
                  ),
                  Row(
                    children: [
                      InkWell(
                          onTap: () {
                            setState(() {
                              isRemember = !isRemember;
                            });
                          },
                          child: Container(
                              padding: const EdgeInsets.only(left: 30.0),
                              alignment: Alignment.centerLeft,
                              decoration: const BoxDecoration(shape: BoxShape.circle),
                              child: isRemember
                                  ? SvgPicture.asset("assets/graphics/images/condition_img_check.svg")
                                  : SvgPicture.asset("assets/graphics/images/condition_img_not_check.svg"))),
                      const SizedBox(width: 5.0),
                      Text("Remember me", style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.white, fontSize: 12))),
                      Container(
                        width: size.width * .6,
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 5.0),
                        child: TextButton(
                            onPressed: () => Get.to(() => const ForgetPwdPage()),
                            child: Text("Forgot Password?",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color: Colors.white, fontSize: 12),
                                ))),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RoundedButtonLong(
                    text: "Login",
                    press: () => Get.off(() => HomePage()),
                    imgName: 'assets/graphics/ic_logo_green_icon.png',
                    color: Colors.white,
                    textColor: kPrimaryColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TapRichText(
                      tapEmailResponse: () {
                        Get.to(() => const ForgetEmailPage());
                      },
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 30),
                      child: Divider(
                        color: Colors.white30,
                        height: 1,
                      )),
                  Text("Don't have an account?", style: GoogleFonts.lato(textStyle: const TextStyle(color: Colors.white54, fontSize: 12))),
                  const SizedBox(height: 10),
                  OutlinedBorderButtonLong(
                      text: "Register",
                      press: () => Get.off(() => RegistrationPage()),
                      color: Colors.white,
                      textColor: Colors.white,
                      imgName: 'assets/graphics/ic_register_white_icon.png'),
                  const SizedBox(height: 40),
                  SizedBox(height: MediaQuery.of(context).viewInsets.bottom),
                ]),
              ],
            )
          ]),
        ));
  }
}
