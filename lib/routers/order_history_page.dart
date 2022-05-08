import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/order_history_detail_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: Column(
        mainAxisSize: MainAxisSize.min,
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
                  "Orders History",
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
          Material(
            color: Colors.white,
            child: SizedBox(
              height: size.height * .87,
              width: size.width * .9,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                removeBottom: true,
                child: ListView.builder(
                  itemBuilder: (context, position) {
                    return Column(
                      children: [
                        Ink(
                          width: size.width,
                          height: 80,
                          padding: EdgeInsets.zero,
                          decoration: const BoxDecoration(
                            color: kLoationFiedlBgColor,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: InkWell(
                            onTap: () => Get.to(() => const OrderHistoryDetailPage()),
                            borderRadius: const BorderRadius.all(Radius.circular(16)),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: size.width * .7,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Flexible(
                                          flex: 3,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            "Voluptas Ut Aut Shop",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                  color: kBlackHeadingColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  overflow: TextOverflow.ellipsis),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            "3 items",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 12, overflow: TextOverflow.ellipsis),
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          flex: 2,
                                          fit: FlexFit.tight,
                                          child: Text(
                                            "March 22, 2021 - 09:23 PM",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(color: kBlackSubHeadingColor, fontSize: 12, overflow: TextOverflow.ellipsis),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: size.width * .2,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Flexible(
                                        flex: 4,
                                        fit: FlexFit.tight,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 8, right: 10),
                                          child: Text(
                                            "\$38.57",
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                  color: kBlackHeadingColor,
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold,
                                                  overflow: TextOverflow.ellipsis),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 7,
                                        child: Padding(
                                          padding: const EdgeInsets.only(top: 3, right: 3),
                                          child: InkWell(
                                            onTap: () {},
                                            child: Image.asset(
                                              "assets/graphics/ic_expand_settings_icon.png",
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    );
                  },
                  itemCount: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).viewInsets.bottom,
          ),
        ],
      ),
    );
  }
}
