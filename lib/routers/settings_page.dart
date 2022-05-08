import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Material(
      color: Colors.white,
      child: Column(
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
                child: Text("Settings",
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
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Ink(
                    width: size.width * .9,
                    decoration: const BoxDecoration(
                      color: kLoationFiedlBgColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Image.asset(
                                      "assets/graphics/ic_account_settings_icon.png"),
                                ),
                                Flexible(
                                  child: Text(
                                    "Account Settings",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: kBlackHeadingColor,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                          overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            width: size.width * .75,
                          ),
                          SizedBox(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Image.asset(
                              "assets/graphics/ic_expand_settings_icon.png",
                              width: size.width * .15,
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Ink(
                    width: size.width * .9,
                    decoration: const BoxDecoration(
                      color: kLoationFiedlBgColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Image.asset(
                                      "assets/graphics/ic_notification_settings_icon.png"),
                                ),
                                Flexible(
                                    child: Text("Notifications Settings",
                                        style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                                color: kBlackHeadingColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                overflow:
                                                    TextOverflow.ellipsis)))),
                              ],
                            ),
                            width: size.width * .75,
                          ),
                          SizedBox(
                              child: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Image.asset(
                              "assets/graphics/ic_expand_settings_icon.png",
                              width: size.width * .15,
                            ),
                          )),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Ink(
                    width: size.width * .9,
                    decoration: const BoxDecoration(
                      color: kLoationFiedlBgColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: InkWell(
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                      onTap: () {},
                      child: Row(
                        children: [
                          SizedBox(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: Image.asset(
                                      "assets/graphics/ic_app_settings_icon.png"),
                                ),
                                Flexible(
                                    child: Text("App Settings",
                                        style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                                color: kBlackHeadingColor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.bold,
                                                overflow:
                                                    TextOverflow.ellipsis)))),
                              ],
                            ),
                            width: size.width * .75,
                          ),
                          SizedBox(
                            child: Padding(
                              padding: const EdgeInsets.only(top: 3),
                              child: Image.asset(
                                "assets/graphics/ic_expand_settings_icon.png",
                                width: size.width * .15,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
