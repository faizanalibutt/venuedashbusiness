import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/controller/text_controller.dart';
import 'package:venuedashbusiness/routers/change_password_page.dart';
import 'package:venuedashbusiness/routers/location_edit_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';
import 'package:venuedashbusiness/widgets/rounded_password_field.dart';

class ProfileEditPage extends StatefulWidget {
  ProfileEditPage({Key? key}) : super(key: key);
  final textControllerGet = Get.find<TextController>();

  @override
  State<ProfileEditPage> createState() => _ProfileEditPageState();
}

class _ProfileEditPageState extends State<ProfileEditPage> {
  bool isChecked = false;
  bool _isPwdVisible = true;
  bool _isPwdVisible2 = true;
  String? dropdownValue;
  var businessTypeList = ['Global', 'Local', 'Non-Profit', 'Outsource'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Edit Profile",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: kBlackHeadingColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ))),
            Text("", style: GoogleFonts.lato(textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 12)))
          ],
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset("assets/graphics/ic_back_button.png"),
        ),
        leadingWidth: 80,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        child: SingleChildScrollView(
            child: Column(mainAxisSize: MainAxisSize.max, children: [
          Container(
            height: 180,
            width: 280,
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: kLoationFiedlBgColor,
                borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                border: Border.all(width: 1, color: kPrimaryColor)),
            child: Padding(
              padding: const EdgeInsets.all(75),
              child: Image.asset("assets/graphics/ic_camera_green_icon.png"),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            "Upoload a Cover Picture", // Change Picture ID
            style: GoogleFonts.lato(
              textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 10),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 20),
            alignment: Alignment.topLeft,
            child: const Text(
              "Business Type",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 3.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width * .85,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(width: 1, color: kPrimaryColor)),
              child: DropdownButton<String>(
                value: dropdownValue,
                icon: Image.asset("assets/graphics/ic_dropdown_green_icon.png"),
                elevation: 16,
                isExpanded: true,
                dropdownColor: Colors.white,
                style: GoogleFonts.lato(
                    textStyle:
                        const TextStyle(color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis)),
                underline: Container(
                  height: 1,
                  color: Colors.transparent,
                ),
                hint: Text("Select a type",
                    style: GoogleFonts.lato(
                      textStyle: const TextStyle(color: kBlackColor30, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis),
                    )),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: businessTypeList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Business ID",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          RoundedInputField(
            textInputType: TextInputType.text,
            onChanged: (value) {},
            focus: false,
            color: kPrimaryColor,
            textColor: kBlackFieldColor,
            cursorColor: kPrimaryColor,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Business Name",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          RoundedInputField(
            textInputType: TextInputType.name,
            onChanged: (value) {},
            focus: false,
            color: kPrimaryColor,
            textColor: kBlackFieldColor,
            cursorColor: kPrimaryColor,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Business Owner Name",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          RoundedInputField(
            textInputType: TextInputType.name,
            onChanged: (value) {},
            focus: false,
            color: kPrimaryColor,
            textColor: kBlackFieldColor,
            cursorColor: kPrimaryColor,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Business Location",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20, top: 3),
            child: Container(
              height: 50,
              width: size.width * .85,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: kPrimaryColor),
                borderRadius: const BorderRadius.all(Radius.circular(30)),
              ),
              child: InkWell(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                onTap: () {
                  Get.to(() => const LocationEditPage());
                },
                child: Row(
                  children: [
                    const SizedBox(width: 20),
                    Obx(
                      () => Flexible(
                          flex: 7,
                          fit: FlexFit.tight,
                          child: Text(widget.textControllerGet.controllerTextValue.value,
                              style: GoogleFonts.lato(
                                  textStyle: const TextStyle(
                                      color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis)))),
                    ),
                    Flexible(
                      flex: 2,
                      fit: FlexFit.tight,
                      child: Align(alignment: Alignment.center, child: Image.asset("assets/graphics/ic_edit_green_icon.png")),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Phone Number",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20.0, top: 3.0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: size.width * .85,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                  border: Border.all(width: 1, color: kPrimaryColor)),
              child: DropdownButton<String>(
                isExpanded: true,
                iconSize: 0.0,
                value: dropdownValue,
                dropdownColor: Colors.white,
                underline: const SizedBox(),
                hint: Text("Enter your phone number",
                    style: GoogleFonts.lato(
                      textStyle:
                          const TextStyle(color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis),
                    )),
                style: GoogleFonts.lato(
                    textStyle:
                        const TextStyle(color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis)),
                onChanged: (String? newValue) {
                  setState(() {
                    dropdownValue = newValue!;
                  });
                },
                items: businessTypeList.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Row(
                      children: [
                        Image.asset("assets/graphics/ic_dropdown_green_icon.png"),
                        const SizedBox(width: 10),
                        Text(
                          "(+1)",
                          style: GoogleFonts.lato(
                              textStyle: const TextStyle(
                                  color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis)),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Business Email",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
            ),
          ),
          RoundedInputField(
            textInputType: TextInputType.emailAddress,
            onChanged: (value) {},
            focus: false,
            color: kPrimaryColor,
            textColor: kBlackFieldColor,
            cursorColor: kPrimaryColor,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
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
            cursorColor: kPrimaryColor,
            borderColor: kPrimaryColor,
            iconColor: kPrimaryColor,
          ),
          Container(
            padding: const EdgeInsets.only(left: 30),
            alignment: Alignment.topLeft,
            child: const Text(
              "Confirm Password",
              style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
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
            cursorColor: kPrimaryColor,
            borderColor: kPrimaryColor,
            iconColor: kPrimaryColor,
          ),
          const SizedBox(
            height: 10,
          ),
          RoundedButtonLong(
            buttonWidth: .9,
            text: "Update Profile",
            press: () => Get.dialog(
                CustomAlertConfirmationDialog(
                  dialogHeight: 240,
                  titleText: "Success!",
                  descText: "Profile updated successfully.",
                  onConfirmPressed: () => Get.back(),
                  isSvg: true,
                ),
                barrierDismissible: false),
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
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
