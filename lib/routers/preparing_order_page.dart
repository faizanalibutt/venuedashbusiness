import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_action_dialog.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class PreparingOrderPage extends StatelessWidget {
  const PreparingOrderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Preparing Order",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
              color: kBlackHeadingColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ))),
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
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Ink(
                height: 70,
                width: size.width * .9,
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Time Left",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        color: kBlackHeadingColor,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      )),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "00:09:44",
                      style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                        color: kBlackHeadingColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      )),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: size.width * .95,
                color: Colors.white,
                child: Text("Order Details",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              Ink(
                width: size.width * .95,
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Material(
                          color: kLoationFiedlBgColor,
                          child: MediaQuery.removePadding(
                              context: context,
                              removeTop: true,
                              removeBottom: true,
                              child: ListView.builder(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, position) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Flexible(
                                            child: Row(
                                              children: [
                                                Image.asset("assets/graphics/BG-1.png"),
                                                const SizedBox(
                                                  width: 10,
                                                ),
                                                Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text("Eligendi Ad",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                            color: kBlackHeadingColor,
                                                            fontSize: 12,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        )),
                                                    const SizedBox(
                                                      height: 5,
                                                    ),
                                                    Text("x1",
                                                        textAlign: TextAlign.start,
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                            color: kBlackHeadingColor,
                                                            fontSize: 12,
                                                          ),
                                                        ))
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          Flexible(
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text("\$14.45",
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(
                                                      color: kBlackHeadingColor,
                                                      fontSize: 14,
                                                    ),
                                                  )),
                                            ),
                                          )
                                        ],
                                      ),
                                      const SizedBox(height: 8)
                                    ],
                                  );
                                },
                                itemCount: 4,
                              ))),
                      Column(
                        children: [
                          const Divider(height: 1, color: kBlackColor30),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("Total Amount",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                          )),
                                      Text("Delivery Charges",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              color: kBlackHeadingColor,
                                              fontSize: 14,
                                            ),
                                          ))
                                    ],
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("\$33.57",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                          )),
                                      Text("\$5.00",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              color: kBlackHeadingColor,
                                              fontSize: 14,
                                            ),
                                          ))
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          const Divider(
                            height: 1,
                            color: kBlackColor30,
                          ),
                        ],
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: Text("Payable Amount",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                )),
                          ),
                          Expanded(
                            flex: 6,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text("\$38.57",
                                  style: GoogleFonts.lato(
                                    textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                  )),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                width: size.width * .95,
                color: Colors.white,
                child: Text("Pick Up Driver",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              Ink(
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      flex: 6,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/graphics/img_business_user_comment.png",
                            width: size.width * .15,
                          ),
                          Flexible(
                            child: Text("John Doe",
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        color: kBlackHeadingColor, fontSize: 15, fontWeight: FontWeight.bold, overflow: TextOverflow.ellipsis))),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset("assets/graphics/ic_distacnce_green_icon.png"),
                            const SizedBox(width: 5),
                            Text(
                              "17.2 km away.",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              RoundedButtonLong(
                text: "Complete Order",
                press: () => {
                  Get.dialog(
                      CustomActionDialog(
                        title: "Order Complete?",
                        titleBtnYes: "Yes",
                        titleBtnNo: "No",
                        icon: "assets/graphics/ic_alert_green_icon.png",
                        iconNve: "assets/graphics/ic_cross_green_icon.png",
                        iconVe: "assets/graphics/ic_okay_icon.png",
                        description: "Have you handed over the packed order to the driver?",
                        onYesPressed: () {
                          Get.back();
                          Get.dialog(
                              CustomAlertConfirmationDialog(
                                dialogHeight: 240,
                                titleText: "Order Completed",
                                descText: "This order is completed successfully.",
                                buttonText: "Okay",
                                onConfirmPressed: () => Get.back(),
                                isSvg: true,
                              ),
                              barrierDismissible: false);
                        },
                        onNoPressed: () {
                          Get.back();
                        },
                      ),
                      barrierDismissible: false)
                }, // save new product to db.
                buttonWidth: .85,
                textColor: Colors.white,
                imgName: "assets/graphics/ic_okay_icon.png",
                onPrimaryColor: Colors.white54,
                borderRadius: 16.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
