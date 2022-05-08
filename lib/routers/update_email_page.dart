import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';
import 'package:venuedashbusiness/widgets/rounded_password_field.dart';

class UpdateEmailPage extends StatefulWidget {
  const UpdateEmailPage({Key? key}) : super(key: key);

  @override
  State<UpdateEmailPage> createState() => _UpdateEmailPageState();
}

class _UpdateEmailPageState extends State<UpdateEmailPage> {
  @override
  Widget build(BuildContext context) {
    bool _isPwdVisible = true;
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
                  "Update Email Address",
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
            child: Padding(
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Current Email",
                      style:
                          TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
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
                      "New Email",
                      style:
                          TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
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
                      "Current Password",
                      style:
                          TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
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
                    text: "Update Email Address",
                    press: () async {
                      Get.dialog(
                          CustomAlertConfirmationDialog(
                            titleText: 'Success',
                            descText: 'Your email address has been updated successfully.',
                            onConfirmPressed: () {
                              Get.to(() => const LoginPage());
                          }),
                          barrierDismissible: false);
                    },
                    imgName: 'assets/graphics/sign_up_login_icon.png',
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    onPrimaryColor: Colors.white54,
                  ),
                ],
              )),
              padding: const EdgeInsets.all(20),
            ),
          ),
        ],
      ),
    );
  }
}
