import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_password_field.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({Key? key}) : super(key: key);

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  bool _isPwdVisible = true;
  bool _isPwdVisible2 = true;
  bool _isPwdVisible3 = true;
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
                child: Text("Change Password",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
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
          SizedBox(
            height: size.height * .87,
            child: SingleChildScrollView(
              child: Padding(
                child: Column(children: [
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
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "New Password",
                      style:
                          TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                    ),
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                    isPwdVisible: _isPwdVisible2,
                    pwdCallbackOn: () {
                      setState(() {
                        _isPwdVisible2 = !_isPwdVisible2;
                      });
                    },
                    pwdCallbackOff: () {
                      setState(() {
                        _isPwdVisible2 = !_isPwdVisible2;
                      });
                    },
                    textColor: kBlackFieldColor,
                    borderColor: kPrimaryColor,
                    iconColor: kPrimaryColor,
                    cursorColor: kPrimaryColor,
                  ),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Confirm New Password",
                      style:
                          TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                    ),
                  ),
                  RoundedPasswordField(
                    onChanged: (value) {},
                    isPwdVisible: _isPwdVisible3,
                    pwdCallbackOn: () {
                      setState(() {
                        _isPwdVisible3 = !_isPwdVisible3;
                      });
                    },
                    pwdCallbackOff: () {
                      setState(() {
                        _isPwdVisible3 = !_isPwdVisible3;
                      });
                    },
                    textColor: kBlackFieldColor,
                    borderColor: kPrimaryColor,
                    iconColor: kPrimaryColor,
                    cursorColor: kPrimaryColor,
                  ),
                  RoundedButtonLong(
                    buttonWidth: .9,
                    text: "Change Password",
                    press: () async {
                      Get.dialog(CustomAlertConfirmationDialog(
                        dialogHeight: 240,
                        titleText: "Sucess!",
                        descText: "Password changed successfully.",
                        buttonText: "Okay",
                        onConfirmPressed: () => Get.back(),
                      ));
                    },
                    imgName: 'assets/graphics/ic_okay_icon.png',
                    color: kPrimaryColor,
                    textColor: Colors.white,
                    onPrimaryColor: Colors.white54,
                  ),
                  const Padding(
                    child: Divider(
                      height: 1,
                      color: kBlackColor30,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                  ),
                  OutlinedBorderButtonLong(
                      buttonWidth: .9,
                      borderColor: kPrimaryColor,
                      text: "Cancel",
                      press: () => Get.back(),
                      color: kPrimaryColor,
                      textColor: kPrimaryColor,
                      imgName: 'assets/graphics/ic_cancel_curve_icon.png'),
                  SizedBox(
                    height: MediaQuery.of(context).viewInsets.bottom,
                  ),
                ]),
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
