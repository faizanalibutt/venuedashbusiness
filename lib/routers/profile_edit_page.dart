import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/change_password_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(children: [
        SizedBox(
          height: size.height * .04,
        ),
        Stack(
          children: [
            Container(
              alignment: Alignment.center,
              width: size.width,
              height: size.height * .07,
              child: Text("Edit Profile",
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
                  child: Column(children: [
                Align(
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {},
                    child: Column(children: [
                      Image.asset("assets/graphics/ic_edit_profile_icon.png"),
                      const SizedBox(
                        height: 5,
                      ),
                      Text("Change Picture",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                            color: kBlackHeadingColor,
                            fontSize: 12,
                          ))),
                    ]),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Full Name",
                    style:
                        TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                  ),
                ),
                RoundedInputField(
                  fieldWidth: .9,
                  textInputType: TextInputType.name,
                  onChanged: (value) {},
                  color: kPrimaryColor,
                  textColor: kBlackFieldColor,
                  cursorColor: kPrimaryColor,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Email",
                    style:
                        TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                  ),
                ),
                RoundedInputField(
                  fieldWidth: .9,
                  textInputType: TextInputType.emailAddress,
                  onChanged: (value) {},
                  color: kPrimaryColor,
                  textColor: kBlackFieldColor,
                  cursorColor: kPrimaryColor,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Phone Number",
                    style:
                        TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                  ),
                ),
                RoundedInputField(
                  fieldWidth: .9,
                  textInputType: TextInputType.number,
                  onChanged: (value) {},
                  color: kPrimaryColor,
                  textColor: kBlackFieldColor,
                  cursorColor: kPrimaryColor,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Insurance Car Registration",
                    style:
                        TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                  ),
                ),
                RoundedInputField(
                  fieldWidth: .9,
                  textInputType: TextInputType.emailAddress,
                  onChanged: (value) {},
                  color: kPrimaryColor,
                  textColor: kBlackFieldColor,
                  cursorColor: kPrimaryColor,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20),
                  alignment: Alignment.topLeft,
                  child: const Text(
                    "Social Security Card",
                    style:
                        TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                  ),
                ),
                RoundedInputField(
                  fieldWidth: .9,
                  textInputType: TextInputType.emailAddress,
                  onChanged: (value) {},
                  color: kPrimaryColor,
                  textColor: kBlackFieldColor,
                  cursorColor: kPrimaryColor,
                ),
                const SizedBox(
                  height: 10,
                ),
                RoundedButtonLong(
                  buttonWidth: .9,
                  text: "Update Profile",
                  press: () => Get.dialog(CustomAlertConfirmationDialog(
                    dialogHeight: 240,
                    titleText: "Success!",
                    descText: "Profile updated successfully.",
                    onConfirmPressed: () => Get.back(),
                  )),
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
                    text: "Change Password",
                    press: () => Get.to(() => const ChangePasswordPage()),
                    color: kPrimaryColor,
                    textColor: kPrimaryColor,
                    imgName: 'assets/graphics/ic_change_pwd_icon.png'),
                SizedBox(
                  height: MediaQuery.of(context).viewInsets.bottom,
                ),
              ])),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            )),
      ]),
    );
  }
}
