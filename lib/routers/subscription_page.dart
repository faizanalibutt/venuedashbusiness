import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/subscribe_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class SubscriptionPage extends StatelessWidget {
  const SubscriptionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Subscription",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: kBlackHeadingColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ))),
            Text("",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: kBlackSubHeadingColor,
                  fontSize: 12,
                )))
          ],
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset(
            "assets/graphics/ic_back_button.png",
            alignment: Alignment.topCenter,
          ),
        ),
        leadingWidth: 80,
        shadowColor: Colors.transparent,
      ),
      body: Padding(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 110,
                width: size.width * .9,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: kLoationFiedlBgColor,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(width: 1, color: kPrimaryColor)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Column(
                    children: [
                      Image.asset("assets/graphics/ic_subscription_white_icon.png"),
                      const SizedBox(height: 15),
                      Text(
                        "No subscription is active right now.",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: kBlackDescColor, fontSize: 12),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const Padding(
                child: Divider(
                  height: 1,
                  color: kBlackColor30,
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              Container(
                width: size.width * .9,
                color: Colors.white,
                child: Text("Available Subscriptions",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              Container(
                height: 130,
                width: size.width * .9,
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Monthly Subscription",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackFieldColor, fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "30 free delivery services for 30 days",
                              maxLines: null,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackDescColor, fontSize: 12),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "\$4.99",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackFieldColor, fontSize: 36, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 130,
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 10),
                          child: RoundedButtonLong(
                            buttonWidth: .9,
                            borderRadius: 16,
                            text: "Subscribe",
                            press: () => Get.to(() => const SubscribePage()),
                            imgName: 'assets/graphics/ic_okay_icon.png',
                            color: kPrimaryColor,
                            textColor: Colors.white,
                            onPrimaryColor: Colors.white54,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                height: 130,
                width: size.width * .9,
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Yearly Subscription",
                              textAlign: TextAlign.start,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackFieldColor, fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "400 free delivery services for 365 days",
                              maxLines: null,
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackDescColor, fontSize: 12),
                              ),
                            ),
                            const SizedBox(height: 10),
                            Text(
                              "\$49.99",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackFieldColor, fontSize: 36, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          height: 130,
                          alignment: Alignment.bottomCenter,
                          padding: const EdgeInsets.only(bottom: 10),
                          child: RoundedButtonLong(
                            buttonWidth: .9,
                            borderRadius: 16,
                            text: "Subscribe",
                            press: () => Get.to(() => const SubscribePage()),
                            imgName: 'assets/graphics/ic_okay_icon.png',
                            color: kPrimaryColor,
                            textColor: Colors.white,
                            onPrimaryColor: Colors.white54,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}