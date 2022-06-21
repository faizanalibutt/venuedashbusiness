import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class OrderHistoryDetailPage extends StatelessWidget {
  const OrderHistoryDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Order Delivery",
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
        child: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              width: size.width * .9,
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
              width: size.width * .9,
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
                                              Image.asset("assets/graphics/order_detail_item_icon.png"),
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
                                            child: Text("\$9.07",
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
                              itemCount: 3,
                            ))),
                    Column(
                      children: [
                        const Divider(height: 1, color: kBlackColor30),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
                          child: Row(
                            children: [
                              Flexible(
                                flex: 4,
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
                              Flexible(
                                flex: 7,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("\$33.57",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                                          )),
                                    ),
                                    Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("\$5.00",
                                          style: GoogleFonts.lato(
                                            textStyle: const TextStyle(
                                              color: kBlackHeadingColor,
                                              fontSize: 14,
                                            ),
                                          )),
                                    )
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
                        Flexible(
                          flex: 4,
                          child: Text("Payable Amount",
                              style: GoogleFonts.lato(
                                textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, fontWeight: FontWeight.bold),
                              )),
                        ),
                        Flexible(
                          flex: 7,
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
            const SizedBox(height: 20),
            Container(
              width: size.width * .9,
              color: Colors.white,
              child: Text("Order Review",
                  style: GoogleFonts.lato(
                      textStyle: const TextStyle(
                    color: kBlackHeadingColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ))),
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Ink(
                    width: size.width * .9,
                    padding: EdgeInsets.zero,
                    decoration: const BoxDecoration(
                      color: kLoationFiedlBgColor,
                      borderRadius: BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(children: [
                          Container(
                            height: 30,
                            decoration: const BoxDecoration(
                              color: kLoationFiedlBgColor,
                              borderRadius: BorderRadius.all(Radius.circular(16)),
                            ),
                            child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                              Flexible(flex: 1, fit: FlexFit.tight, child: Image.asset("assets/graphics/img_business_user_comment.png")),
                              const SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                flex: 6,
                                fit: FlexFit.tight,
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                  Text(
                                    "Ms. Farah",
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                      color: kBlackHeadingColor,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    )),
                                  ),
                                  Row(children: [
                                    Image.asset("assets/graphics/Icon ionic-ios-star.png"),
                                    const SizedBox(width: 5),
                                    Text("4 Rating",
                                        style: GoogleFonts.lato(
                                          textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                        ))
                                  ]),
                                ]),
                              ),
                              Flexible(
                                flex: 3,
                                fit: FlexFit.tight,
                                child: Container(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "a month ago",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10, overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                              )
                            ]),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Ipsam Magni Amet Dolores. Quisquam Exercitationem Repudiandae Consequatur Nihil Magni Ut Voluptatem Dolor. "
                            "Asperiores Ea Distinctio Laboriosam Laudantium. Officiis Consequatur Molestias Sed Doloremque Sint Veniam.",
                            style: GoogleFonts.lato(
                              textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                            ),
                            maxLines: null,
                          )
                        ]))),
                const SizedBox(height: 15),
              ],
            )
          ],
        )),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
