import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/controller/text_controller.dart';
import 'package:venuedashbusiness/routers/location_edit_page.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/routers/privacy_policy_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';
import 'package:venuedashbusiness/widgets/rounded_password_field.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({Key? key}) : super(key: key);
  final textControllerGet = Get.find<TextController>();

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isChecked = false;
  bool _isPwdVisible = true;
  bool _isPwdVisible2 = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
        color: Colors.white,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: size.height * .04),
          Image.asset(
            "assets/graphics/welcome_logo.png",
            height: size.height * .2,
          ),
          SizedBox(height: size.height * .01),
          SizedBox(
              height: size.height * .75,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: SvgPicture.asset(
                      "assets/graphics/images/account_bg.svg",
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(children: [
                    SizedBox(
                      height: size.height * .1,
                    ),
                    Container(
                        height: size.height * .05,
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        alignment: Alignment.center,
                        child: const FittedBox(
                            child: Text(
                          "Create An Account.",
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ))),
                    Container(
                        height: size.height * .05,
                        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                        alignment: Alignment.topCenter,
                        child: const FittedBox(
                            child: Text(
                          "Please enter below details to get registered.",
                          style: TextStyle(color: kWhite500Color, fontSize: 13),
                        ))),
                    SizedBox(
                        height: size.height * .55,
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 180,
                                width: 280,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                    border: Border.all(width: 1, color: Colors.white)),
                                child: Padding(
                                  padding: const EdgeInsets.all(75),
                                  child: SvgPicture.asset("assets/graphics/images/ic_register_camera_icon.svg"),
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text("Upoload a Cover Picture", // Change Picture ID
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(color: Colors.white, fontSize: 10),
                                  )),
                              Container(
                                padding: const EdgeInsets.only(left: 50, top: 20),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Business Type",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              RoundedInputField(
                                textInputType: TextInputType.name,
                                onChanged: (value) {},
                                focus: true,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Business ID",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              RoundedInputField(
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) {},
                                focus: false,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Business Name",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              RoundedInputField(
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) {},
                                focus: false,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Business Owner Name",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              RoundedInputField(
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) {},
                                focus: false,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Business Location",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              Ink(
                                width: size.width * .9,
                                decoration: const BoxDecoration(
                                  color: kLoationFiedlBgColor,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: InkWell(
                                  borderRadius: const BorderRadius.all(Radius.circular(16)),
                                  onTap: () {
                                    Get.to(() => const LocationEditPage());
                                  },
                                  child: Row(
                                    children: [
                                      SizedBox(
                                        child: Row(
                                          children: [
                                            Obx(
                                              () => Flexible(
                                                  child: Text(widget.textControllerGet.controllerTextValue.value,
                                                      style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                              color: kBlackHeadingColor,
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.normal,
                                                              overflow: TextOverflow.ellipsis)))),
                                            ),
                                          ],
                                        ),
                                        width: size.width * .75,
                                      ),
                                      SizedBox(
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 3),
                                          child: Image.asset(
                                            "assets/graphics/ic_edit_location_home_icon.png",
                                            width: size.width * .15,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Phone Number",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              RoundedInputField(
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) {},
                                focus: false,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Business Email",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
                                ),
                              ),
                              RoundedInputField(
                                textInputType: TextInputType.emailAddress,
                                onChanged: (value) {},
                                focus: false,
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Password",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
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
                              ),
                              Container(
                                padding: const EdgeInsets.only(left: 50),
                                alignment: Alignment.topLeft,
                                child: const Text(
                                  "Confirm Password",
                                  style: TextStyle(color: kWhite500Color, fontSize: 10),
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
                              ),
                              Row(
                                children: [
                                  InkWell(
                                      onTap: () {
                                        setState(() {
                                          isChecked = !isChecked;
                                        });
                                      },
                                      child: Container(
                                          padding: const EdgeInsets.only(left: 30.0),
                                          alignment: Alignment.centerLeft,
                                          decoration: const BoxDecoration(shape: BoxShape.circle),
                                          child: isChecked
                                              ? SvgPicture.asset("assets/graphics/images/condition_img_check.svg")
                                              : SvgPicture.asset("assets/graphics/images/condition_img_not_check.svg"))),
                                  const SizedBox(width: 5.0),
                                  InkWell(
                                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const PrivacyPolicyPage())),
                                    child: const Text("Accept terms & conditions", style: TextStyle(color: Colors.white, fontSize: 12)),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20.0,
                              ),
                              RoundedButtonLong(
                                text: "Register",
                                press: () => Get.back(), //to(() => HomePage()),
                                imgName: 'assets/graphics/sign_up_register_icon.png',
                                color: Colors.white,
                                textColor: kPrimaryColor,
                              ),
                              Container(
                                  height: 60.0,
                                  padding: const EdgeInsets.symmetric(horizontal: 80.0),
                                  alignment: Alignment.center,
                                  child: const Divider(
                                    color: Colors.white30,
                                    height: 1,
                                  )),
                              const Text("Please enter below details to get registered.", style: TextStyle(color: Colors.white54, fontSize: 12)),
                              const SizedBox(
                                height: 10,
                              ),
                              OutlinedBorderButtonLong(
                                  text: "Login",
                                  press: () => Get.to(() => const LoginPage()),
                                  color: Colors.white,
                                  textColor: Colors.white,
                                  imgName: 'assets/graphics/sign_up_login_icon.png'),
                              const SizedBox(
                                height: 45,
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).viewInsets.bottom,
                              ),
                            ],
                          ),
                        )),
                  ]),
                ],
              ))
        ]));
  }
}
