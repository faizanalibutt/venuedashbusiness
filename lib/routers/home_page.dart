import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/controller/text_controller.dart';
import 'package:venuedashbusiness/routers/accepted_orders_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  final locationController = Get.put(TextController());
  final textControllerGet = Get.find<TextController>();
  final GlobalKey<ScaffoldState> _keyH = GlobalKey();

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      key: widget._keyH,
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      body: SizedBox(
          height: size.height * .77,
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
                                          Expanded(
                                            child: Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Expanded(
                                                      child: Text(
                                                        "6 items",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                              color: kBlackHeadingColor,
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.bold,
                                                              overflow: TextOverflow.ellipsis),
                                                        ),
                                                      ),
                                                    ),
                                                    Text(
                                                      "\$9.52",
                                                      style: GoogleFonts.lato(
                                                        textStyle: const TextStyle(
                                                            color: kBlackHeadingColor,
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold,
                                                            overflow: TextOverflow.ellipsis),
                                                      ),
                                                    ),
                                                  ],
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
                                                    textStyle:
                                                        const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                  ),
                                                ),
                                                const SizedBox(height: 5),
                                              ],
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
    );
  }
}
