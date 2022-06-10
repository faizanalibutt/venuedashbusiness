import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/edit_product_page.dart';
import 'package:venuedashbusiness/routers/product_categories_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class ManageProductsMainPage extends StatefulWidget {
  const ManageProductsMainPage({Key? key}) : super(key: key);

  @override
  State<ManageProductsMainPage> createState() => _ManageProductsMainPageState();
}

class _ManageProductsMainPageState extends State<ManageProductsMainPage> {
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
              const SizedBox(
                height: 20,
              ),
              Ink(
                width: size.width * .9,
                decoration: const BoxDecoration(
                  color: kLoationFiedlBgColor,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
                child: InkWell(
                  onTap: () => Get.to(() => const ProductCategoriesPage()),
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
                                "Manage Product Categories",
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
              SizedBox(
                height: 35,
                width: size.width * .9,
                child: MediaQuery.removePadding(
                  context: context,
                  removeTop: true,
                  removeBottom: true,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, position) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Ink(
                              width: 100,
                              padding: EdgeInsets.zero,
                              decoration: const BoxDecoration(
                                color: kLoationFiedlBgColor,
                                borderRadius: BorderRadius.all(Radius.circular(8)),
                              ),
                              child: InkWell(
                                  onTap: () {},
                                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                                  child: SizedBox(
                                      child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Text("Super Mart".toUpperCase(),
                                            style: GoogleFonts.lato(
                                              textStyle: const TextStyle(
                                                  color: kBlackSubHeadingColor,
                                                  fontSize: 10,
                                                  overflow: TextOverflow.ellipsis,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                      ),
                                    ],
                                  )))),
                          const SizedBox(
                            width: 10,
                          ),
                        ],
                      );
                    },
                    itemCount: 5,
                  ),
                ),
              ),
              const SizedBox(height: 25),
              Container(
                width: size.width * .9,
                color: Colors.white,
                child: Text("Popular Items",
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
                            Container(
                              height: 80,
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              decoration: const BoxDecoration(
                                color: kLoationFiedlBgColor,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
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
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                            onTap: () => Get.to(() => const EditProductPage()),
                                            child: Image.asset("assets/graphics/ic_edit_icon.png"))),
                                  )
                                ],
                              ),
                            ),
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
                            Container(
                              height: 80,
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              decoration: const BoxDecoration(
                                color: kLoationFiedlBgColor,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
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
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                            onTap: () => Get.to(() => const EditProductPage()),
                                            child: Image.asset("assets/graphics/ic_edit_icon.png"))),
                                  )
                                ],
                              ),
                            ),
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
                            Container(
                              height: 80,
                              padding: const EdgeInsets.only(left: 10, top: 10, bottom: 10),
                              decoration: const BoxDecoration(
                                color: kLoationFiedlBgColor,
                                borderRadius: BorderRadius.all(Radius.circular(16)),
                              ),
                              child: Row(
                                children: [
                                  Flexible(
                                    child: Row(
                                      children: [
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
                                      ],
                                    ),
                                  ),
                                  Flexible(
                                    child: Align(
                                        alignment: Alignment.centerRight,
                                        child: InkWell(
                                            onTap: () => Get.to(() => const EditProductPage()),
                                            child: Image.asset("assets/graphics/ic_edit_icon.png"))),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(height: 8)
                          ],
                        );
                      },
                      itemCount: 3,
                    )),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}
