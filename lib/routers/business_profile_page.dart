import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/business_reviews_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class BusinessProfilePage extends StatelessWidget {
  const BusinessProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SizedBox(
        height: size.height * .77,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/graphics/img_business_profile_cover.png",
                    width: size.width,
                    height: 300,
                    alignment: Alignment.topCenter,
                  ),
                  Container(
                    height: 290,
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 70,
                      width: size.width * .9,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 3,
                            fit: FlexFit.tight,
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Volup Tas UT Shop",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                        color: kBlackHeadingColor,
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Image.asset("assets/graphics/Icon ionic-ios-star.png"),
                                      const SizedBox(width: 5),
                                      Text(
                                        "3.1 Rating",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            fit: FlexFit.tight,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(
                                "864 Reviews",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      decoration: const BoxDecoration(
                        color: kLoationFiedlBgColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                width: size.width * .9,
                color: Colors.white,
                child: Text("Order Stats",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Row(
                  children: [
                    Container(
                      height: 70,
                      width: size.width * .42,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This Week",
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            )),
                          ),
                          Text(
                            "93",
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: size.width * .04),
                    Container(
                      height: 70,
                      width: size.width * .42,
                      decoration: const BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.all(Radius.circular(16)),
                      ),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "This Month",
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            )),
                          ),
                          Text(
                            "750",
                            style: GoogleFonts.lato(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            )),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20),
                child: Divider(
                  color: kBlackColor30,
                  height: 1,
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
                  onTap: () => Get.to(() => const BusinessReviewsPage()),
                  child: Row(
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Image.asset("assets/graphics/img_business_reviews_icon.png"),
                            ),
                            Flexible(
                              child: Text(
                                "Reviews (267)",
                                style: GoogleFonts.lato(
                                  textStyle: const TextStyle(color: kBlackFieldColor, fontSize: 15, overflow: TextOverflow.ellipsis),
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
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
