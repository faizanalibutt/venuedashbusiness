import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class AcceptedOrdersPage extends StatelessWidget {
  const AcceptedOrdersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(
            height: size.height * .035,
          ),
          Stack(
            children: [
              Container(
                alignment: Alignment.center,
                width: size.width,
                height: size.height * .07,
                child: Text(
                  "Accepted Orders",
                  style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
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
              child: Material(
                color: Colors.white,
                child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    removeBottom: true,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemBuilder: (context, position) {
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Ink(
                              width: size.width * .9,
                              height: 115,
                              padding: EdgeInsets.zero,
                              decoration: const BoxDecoration(
                                color: kLoationFiedlBgColor,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: InkWell(
                                borderRadius: const BorderRadius.all(Radius.circular(16)),
                                onTap: () => Get.back(), //to(() => const OrderDeliveryPage()),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
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
                                                Text(
                                                  "x2 Quo Qui, x1 Molestias Illo, x2 Etasa, 4 more items...",
                                                  style: GoogleFonts.lato(
                                                    textStyle:
                                                        const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                  ),
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
                                      ),
                                      Container(
                                        height: 35,
                                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                                        decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            color: Colors.white,
                                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                                            border: Border.all(width: 1, color: kPrimaryColor)),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                                "Time Left:",
                                                style: GoogleFonts.lato(
                                                  textStyle:
                                                      const TextStyle(color: kBlackHeadingColor, fontSize: 14, overflow: TextOverflow.ellipsis),
                                                ),
                                              ),
                                            ),
                                            Ink(
                                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                              decoration: const BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                              ),
                                              child: Text(
                                                "00:09:44",
                                                style: GoogleFonts.lato(
                                                  textStyle:
                                                      const TextStyle(color: kBlackHeadingColor, fontSize: 14, overflow: TextOverflow.ellipsis),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        );
                      },
                      itemCount: 6,
                    )),
              )),
        ],
      ),
    );
  }
}
