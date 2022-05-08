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
                              height: 140,
                              padding: EdgeInsets.zero,
                              decoration: const BoxDecoration(
                                color: kLoationFiedlBgColor,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: InkWell(
                                borderRadius: const BorderRadius.all(Radius.circular(16)),
                                onTap: () => Get.back(),//to(() => const OrderDeliveryPage()),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                          flex: 7,
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                flex: 4,
                                                child: ClipRRect(
                                                  borderRadius: BorderRadius.circular(8),
                                                  child: Image.asset("assets/graphics/home_venue_order_img.png"),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 6,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(left: 10),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "Voluptas Ut Aut Shop",
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
                                                          Image.asset("assets/graphics/ic_distacnce_green_icon.png"),
                                                          const SizedBox(width: 5),
                                                          Text(
                                                            "17.2 km away.",
                                                            style: GoogleFonts.lato(
                                                              textStyle: const TextStyle(
                                                                  color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        "Time Left: 43:17",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                              color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                        ),
                                                      ),
                                                      const SizedBox(height: 5),
                                                      Text(
                                                        "3 Items   \$9.52",
                                                        style: GoogleFonts.lato(
                                                          textStyle: const TextStyle(
                                                              color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                        ),
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
                                      Row(
                                        children: [
                                          Flexible(
                                            flex: 2,
                                            fit: FlexFit.tight,
                                            child: Text(
                                              "Your Status:",
                                              style: GoogleFonts.lato(
                                                textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                              ),
                                            ),
                                          ),
                                          Flexible(
                                            flex: 8,
                                            fit: FlexFit.tight,
                                            child: Ink(
                                              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
                                              decoration: const BoxDecoration(
                                                color: kPrimaryColor,
                                                borderRadius: BorderRadius.all(Radius.circular(18)),
                                              ),
                                              child: Text(
                                                "not updated yet",
                                                style: GoogleFonts.lato(
                                                  textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
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
