import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/controller/text_controller.dart';
import 'package:venuedashbusiness/routers/accepted_orders_page.dart';
import 'package:venuedashbusiness/routers/feedback_page.dart';
import 'package:venuedashbusiness/routers/help_page.dart';
import 'package:venuedashbusiness/routers/login_page.dart';
import 'package:venuedashbusiness/routers/order_history_page.dart';
import 'package:venuedashbusiness/routers/privacy_policy_page.dart';
import 'package:venuedashbusiness/routers/settings_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_action_dialog.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final locationController = Get.put(TextController());
  final textControllerGet = Get.find<TextController>();
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: widget._key,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            height: size.height * .12,
            child: Row(children: [
              SizedBox(
                width: size.width * .02,
              ),
              SizedBox(
                width: size.width * .15,
                child: InkWell(
                  onTap: () {
                    widget._key.currentState!.openDrawer();
                  },
                  child: Image.asset(
                    "assets/graphics/ic_home_drawer_button.png",
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 10, left: 12),
                color: Colors.white,
                width: size.width * .51,
                child: Text("Orders Request",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              SizedBox(
                width: size.width * .15,
                child: InkWell(
                  onTap: () {},
                  child: Image.asset(
                    "assets/graphics/ic_notification_icon.png",
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .15,
                child: InkWell(
                  onTap: () {
                    Get.to(() => const OrderHistoryPage());
                  },
                  child: Image.asset(
                    "assets/graphics/ic_history_green_icon.png",
                  ),
                ),
              ),
              SizedBox(
                width: size.width * .01,
              ),
            ]),
          ),
          SizedBox(
              height: size.height * .88,
              child: SingleChildScrollView(
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
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
                    onTap: () => Get.to(() => const AcceptedOrdersPage()),
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 36,
                                alignment: Alignment.center,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: kPrimaryColor,
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Text(
                                    "5",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color: Colors.white, fontSize: 20, overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Flexible(
                                child: Text(
                                  "Accepted Orders",
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, overflow: TextOverflow.ellipsis),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          width: size.width * .74,
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
                const Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 25,
                  ),
                  child: Divider(
                    height: .5,
                    color: kBlackColor30,
                  ),
                ),
                Material(
                  color: Colors.white,
                  child: MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeBottom: true,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, position) {
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Ink(
                                width: size.width * .9,
                                height: 140,
                                padding: EdgeInsets.zero,
                                decoration: const BoxDecoration(
                                  color: kLoationFiedlBgColor,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                          flex: 5,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              // Expanded(
                                              //   flex: 4,
                                              //   child: ClipRRect(
                                              //     borderRadius: BorderRadius.circular(8),
                                              //     child: Image.asset("assets/graphics/home_venue_order_img.png"),
                                              //   ),
                                              // ),
                                              Expanded(
                                                flex: 6,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "6 Items",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                              color: kBlackHeadingColor,
                                                              fontSize: 15,
                                                              fontWeight: FontWeight.bold,
                                                              overflow: TextOverflow.ellipsis),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Row(
                                                        children: [
                                                          Text(
                                                            "x2 Quo Qui, x1 Molestias Illo, x2 Etasa, 4 more items...",
                                                            style: GoogleFonts.lato(
                                                              textStyle: const TextStyle(
                                                                  color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        "March 22, 2021 - 09:23 PM",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                              color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5),
                                                    ],
                                                  ),
                                                ),
                                              )
                                            ],
                                          )),
                                      Flexible(
                                        flex: 5,
                                        child: Row(children: [
                                          Expanded(
                                            child: OutlinedBorderButtonLong(
                                              text: "Reject",
                                              press: () {},
                                              textColor: kPrimaryColor,
                                              borderColor: kPrimaryColor,
                                              imgName: "assets/graphics/ic_cancel_icon.png",
                                            ),
                                          ),
                                          const SizedBox(width: 10),
                                          Expanded(
                                            child: RoundedButtonLong(
                                              buttonWidth: 1,
                                              text: "Accept",
                                              press: () => {
                                                Get.dialog(CustomAlertConfirmationDialog(
                                                    isSvg: false,
                                                    icon: "assets/graphics/ic_alert_green_icon.png",
                                                    dialogHeight: 240,
                                                    titleText: "Limited Orders",
                                                    descText: "You can only accept 5 orders at a time.",
                                                    onConfirmPressed: () => Get.back()))
                                              },
                                              textColor: Colors.white,
                                              imgName: "assets/graphics/ic_okay_icon.png",
                                              onPrimaryColor: Colors.white54,
                                            ),
                                          ),
                                        ]),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                            ],
                          );
                        },
                        itemCount: 6,
                      )),
                )
              ]))),
        ],
      ),
      drawer: SizedBox(
        width: size.width * .7,
        child: Drawer(
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(30), bottomRight: Radius.circular(30)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: size.height * .12,
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: InkWell(
                    onTap: () {
                      widget._key.currentState!.openEndDrawer();
                    },
                    child: Image.asset(
                      "assets/graphics/ic_close_icon.png",
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Divider(
                  color: kBlackColor30,
                  height: 1.0,
                ),
              ),
              SizedBox(
                height: size.height * .6,
                child: Padding(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        InkWell(
                            onTap: () => {widget._key.currentState!.openEndDrawer(), Get.to(() => const HelpPage())},
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_help_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Need Help?",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              widget._key.currentState!.openEndDrawer();
                              Get.to(() => const FeedbackPage());
                            },
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_feedback_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Give us Feedback",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              widget._key.currentState!.openEndDrawer();
                              Get.to(() => const PrivacyPolicyPage());
                            },
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_terms_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Terms & Conditions",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 5,
                        ),
                        InkWell(
                            onTap: () {
                              widget._key.currentState!.openEndDrawer();
                              Get.to(() => const SettingsPage());
                            },
                            child: Padding(
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/graphics/ic_setting_black_icon.png",
                                  ),
                                  const SizedBox(
                                    width: 12,
                                  ),
                                  Text(
                                    "Settings",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ],
                              ),
                              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                            )),
                        const SizedBox(
                          height: 20,
                        ),
                        const Divider(
                          color: kBlackColor30,
                          height: 1.0,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Ink(
                          decoration: const BoxDecoration(
                            color: kLoationFiedlBgColor,
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                          ),
                          child: InkWell(
                              borderRadius: const BorderRadius.all(Radius.circular(8)),
                              onTap: () {
                                widget._key.currentState!.openEndDrawer();
                                Get.dialog(
                                    CustomActionDialog(
                                      icon: "assets/graphics/ic_sign_out_green_icon.png",
                                      title: "Logout?",
                                      description: "Are you sure you want to logout your account?",
                                      iconVe: "assets/graphics/ic_sign_out_white_icon.png",
                                      iconNve: "assets/graphics/ic_cancel_icon.png",
                                      titleBtnYes: "Logout",
                                      titleBtnNo: "No",
                                      onYesPressed: () {
                                        Get.back();
                                        Get.to(() => const LoginPage());
                                      },
                                      onNoPressed: () {},
                                    ),
                                    barrierDismissible: true);
                              },
                              child: Padding(
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/graphics/ic_logout_black_icon.png",
                                    ),
                                    const SizedBox(
                                      width: 12,
                                    ),
                                    Text(
                                      "Logout",
                                      style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                        color: kBlackHeadingColor,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      )),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                              )),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).viewInsets.bottom,
                        ),
                      ],
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
