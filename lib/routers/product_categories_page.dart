import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/product_add_category_page.dart';
import 'package:venuedashbusiness/routers/product_edit_category_page.dart';
import 'package:venuedashbusiness/routers/product_popular_items_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class ProductCategoriesPage extends StatelessWidget {
  const ProductCategoriesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Product Categories",
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
        actions: [
          InkWell(
            onTap: () {
              Get.to(() => const ProductAddCategoryPage());
            },
            child: Image.asset(
              "assets/graphics/ic_add_circle_green_icon.png",
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        child: SingleChildScrollView(
          child: Column(children: [
            Ink(
              width: size.width * .9,
              decoration: const BoxDecoration(
                color: kLoationFiedlBgColor,
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: InkWell(
                onTap: () => Get.to(() => const ProductPopularItemsPage()),
                borderRadius: const BorderRadius.all(Radius.circular(16)),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        child: Text(
                          "Popular Items",
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                              color: kBlackHeadingColor,
                              fontSize: 14,
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3),
                          child: Image.asset(
                            "assets/graphics/ic_edit_green_icon.png",
                            height: 45,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            MediaQuery.removePadding(
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
                          decoration: const BoxDecoration(
                            color: kLoationFiedlBgColor,
                            borderRadius: BorderRadius.all(Radius.circular(16)),
                          ),
                          child: InkWell(
                            onTap: () => Get.to(() => const ProductEditCategoryPage()),
                            borderRadius: const BorderRadius.all(Radius.circular(16)),
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/graphics/ic_menu_green_icon.png",
                                  height: 45,
                                ),
                                const SizedBox(width: 10),
                                Expanded(
                                  child: Text(
                                    "Toys",
                                    style: GoogleFonts.lato(
                                      textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 14, overflow: TextOverflow.ellipsis),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 3),
                                      child: Image.asset(
                                        "assets/graphics/ic_edit_green_icon.png",
                                        height: 45,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                      ],
                    );
                  },
                  itemCount: 5,
                )),
          ]),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
