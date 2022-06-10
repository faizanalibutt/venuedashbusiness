import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class ProductAddPopularItemPage extends StatelessWidget {
  const ProductAddPopularItemPage({Key? key}) : super(key: key);

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
            Text("Add a Product",
                style: GoogleFonts.lato(
                    textStyle: const TextStyle(
                  color: kBlackHeadingColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ))),
            Text("Select a product to add in Popular Items",
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
                child: Text("Vegetables",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * .9,
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
                            Ink(
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: kLoationFiedlBgColor,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: InkWell(
                                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                                    onTap: () => Get.back(),
                                    child: Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                        child: Row(children: [
                                          Flexible(
                                              child: Row(children: [
                                            Image.asset("assets/graphics/bg_product_item_icon.png"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Velit Facere",
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
                                                Text(
                                                  "3 items",
                                                  style: GoogleFonts.lato(
                                                    textStyle:
                                                        const TextStyle(color: kBlackSubHeadingColor, fontSize: 12, overflow: TextOverflow.ellipsis),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text("\$9.0",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(
                                                        color: kBlackHeadingColor,
                                                        fontSize: 12,
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ]))
                                        ])))),
                            const SizedBox(height: 8)
                          ],
                        );
                      },
                      itemCount: 3,
                    )),
              ),
              const SizedBox(height: 25),
              Container(
                width: size.width * .9,
                color: Colors.white,
                child: Text("Baked Items",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * .9,
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
                            Ink(
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: kLoationFiedlBgColor,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: InkWell(
                                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                                    onTap: () => Get.back(),
                                    child: Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                        child: Row(children: [
                                          Flexible(
                                              child: Row(children: [
                                            Image.asset("assets/graphics/bg_product_item_icon.png"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text("Velit Facere",
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
                                                Text(
                                                  "3 items",
                                                  style: GoogleFonts.lato(
                                                    textStyle:
                                                        const TextStyle(color: kBlackSubHeadingColor, fontSize: 12, overflow: TextOverflow.ellipsis),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 5,
                                                ),
                                                Text("\$9.0",
                                                    textAlign: TextAlign.start,
                                                    style: GoogleFonts.lato(
                                                      textStyle: const TextStyle(
                                                        color: kBlackHeadingColor,
                                                        fontSize: 12,
                                                      ),
                                                    ))
                                              ],
                                            ),
                                          ]))
                                        ])))),
                            const SizedBox(height: 8)
                          ],
                        );
                      },
                      itemCount: 3,
                    )),
              ),
              const SizedBox(height: 25),
              Container(
                width: size.width * .9,
                color: Colors.white,
                child: Text("Dairy Products",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: size.width * .9,
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
                            Ink(
                                height: 80,
                                decoration: const BoxDecoration(
                                  color: kLoationFiedlBgColor,
                                  borderRadius: BorderRadius.all(Radius.circular(16)),
                                ),
                                child: InkWell(
                                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                                    onTap: () => Get.back(),
                                    child: Padding(
                                        padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                                        child: Row(children: [
                                          Flexible(
                                              child: Row(children: [
                                            Image.asset("assets/graphics/bg_product_item_icon.png"),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                              Text("Velit Facere",
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
                                              Text(
                                                "3 items",
                                                style: GoogleFonts.lato(
                                                  textStyle:
                                                      const TextStyle(color: kBlackSubHeadingColor, fontSize: 12, overflow: TextOverflow.ellipsis),
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text("\$9.0",
                                                  textAlign: TextAlign.start,
                                                  style: GoogleFonts.lato(
                                                    textStyle: const TextStyle(
                                                      color: kBlackHeadingColor,
                                                      fontSize: 12,
                                                    ),
                                                  ))
                                            ])
                                          ]))
                                        ])))),
                            const SizedBox(height: 8)
                          ],
                        );
                      },
                      itemCount: 3,
                    )),
              ),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
