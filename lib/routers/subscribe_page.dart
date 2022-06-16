import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/add_payment_method_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({Key? key}) : super(key: key);

  @override
  State<SubscribePage> createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  int _groupValue = -1;

  Widget _myRadioButton({String title = "", int value = 0, required Function(int?) onChanged}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: RadioListTile(
        value: value,
        groupValue: _groupValue,
        onChanged: onChanged,
        title: Row(
          children: [
            Expanded(
              flex: 2,
              child: Image.asset(
                "assets/graphics/ic_paypal_icon.png",
                height: 30,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 6,
              child: Text(
                title,
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          ],
        ),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(16))),
        activeColor: kBlackHeadingColor,
      ),
    );
  }

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
            Text("Subscribe",
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
                  fontSize: 10,
                )))
          ],
        ),
        leading: InkWell(
          onTap: () => Get.back(),
          child: Image.asset(
            "assets/graphics/ic_back_button.png",
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
                    color: kLoationFiedlBgColor,
                    borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    border: Border.all(width: 1, color: kPrimaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
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
                child: Text("Payment Method",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              Ink(
                width: size.width * .9,
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Image.asset(
                        "assets/graphics/ic_paypal_icon.png",
                        height: 30,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      flex: 6,
                      child: Text(
                        "Paypal-3492",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, overflow: TextOverflow.ellipsis),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: InkWell(
                          onTap: () => {
                            showModalBottomSheet(
                              context: context,
                              elevation: 50,
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(36.0), topRight: Radius.circular(36.0)),
                              ),
                              builder: (BuildContext context) {
                                return StatefulBuilder(
                                  builder: (BuildContext context, StateSetter stateSetter) {
                                    return Material(
                                      color: Colors.white,
                                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(36), topRight: Radius.circular(36)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Image.asset("assets/graphics/ic_payment_bar_grey_icon.png"),
                                              const SizedBox(height: 20),
                                              Container(
                                                width: size.width * .9,
                                                color: Colors.white,
                                                child: Text("Payment Methods",
                                                    style: GoogleFonts.lato(
                                                        textStyle: const TextStyle(
                                                      color: kBlackHeadingColor,
                                                      fontSize: 16,
                                                      fontWeight: FontWeight.bold,
                                                    ))),
                                              ),
                                              _myRadioButton(
                                                title: "Paypal-3492",
                                                value: 0,
                                                onChanged: (newValue) => stateSetter(() => _groupValue = newValue!),
                                              ),
                                              _myRadioButton(
                                                title: "Paypal-2223",
                                                value: 1,
                                                onChanged: (newValue) => stateSetter(() => _groupValue = newValue!),
                                              ),
                                              _myRadioButton(
                                                title: "Paypal-2223",
                                                value: 2,
                                                onChanged: (newValue) => stateSetter(() => _groupValue = newValue!),
                                              ),
                                              const SizedBox(height: 20),
                                              OutlinedBorderButtonLong(
                                                text: "Add a Payment Method",
                                                press: () => {Get.back(), Get.to(() => AddPaymentMethodPage())},
                                                textColor: kPrimaryColor,
                                                borderColor: kPrimaryColor,
                                                borderRadius: 16.0,
                                                buttonWidth: .9,
                                                imgName: "assets/graphics/ic_add_green_icon.png",
                                              ),
                                              const Padding(
                                                child: Divider(
                                                  height: 1,
                                                  color: kBlackColor30,
                                                ),
                                                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
                                              ),
                                              RoundedButtonLong(
                                                text: "Confirm Payment Method",
                                                press: () => Get.back(),
                                                textColor: Colors.white,
                                                imgName: "assets/graphics/ic_okay_icon.png",
                                                onPrimaryColor: Colors.white54,
                                                borderRadius: 16.0,
                                                buttonWidth: .9,
                                              ),
                                              const SizedBox(height: 20),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                            )
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(top: 3),
                            child: Image.asset(
                              "assets/graphics/ic_edit_icon.png",
                              height: 45,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                child: Divider(
                  height: 1,
                  color: kBlackColor30,
                ),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              ),
              RoundedButtonLong(
                text: "Subscribe",
                press: () => {
                  Get.dialog(
                      CustomAlertConfirmationDialog(
                        dialogHeight: 250,
                        titleText: "Subscribed!",
                        descText: "You have been subscribed to venue dash monthly subscription successfully.",
                        buttonText: "Okay",
                        onConfirmPressed: () => Get.back(),
                        isSvg: true,
                      ),
                      barrierDismissible: false)
                },
                textColor: Colors.white,
                imgName: "assets/graphics/ic_okay_icon.png",
                onPrimaryColor: Colors.white54,
                borderRadius: 16.0,
                buttonWidth: .9,
              ),
              const SizedBox(height: 20),
              OutlinedBorderButtonLong(
                text: "Cancel",
                press: () => Get.back(),
                textColor: kPrimaryColor,
                borderColor: kPrimaryColor,
                borderRadius: 16.0,
                buttonWidth: .9,
                imgName: "assets/graphics/ic_cancel_icon.png",
              ),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
