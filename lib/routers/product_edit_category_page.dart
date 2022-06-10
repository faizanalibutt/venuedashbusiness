import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/routers/add_product_page.dart';
import 'package:venuedashbusiness/routers/edit_product_page.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_action_dialog.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';

class ProductEditCategoryPage extends StatelessWidget {
  const ProductEditCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Edit Category",
            style: GoogleFonts.lato(
                textStyle: const TextStyle(
              color: kBlackHeadingColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            )),
        ),
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
              Get.to(() => const AddProductPage());
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
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Category Title",
                  style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                ),
              ),
              RoundedInputField(
                textInputType: TextInputType.text,
                onChanged: (value) {},
                focus: false,
                fieldWidth: .9,
                color: kPrimaryColor,
                textColor: kBlackFieldColor,
                cursorColor: kPrimaryColor,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 80.0,
                ),
                child: Divider(
                  color: kBlackColor30,
                  height: 1,
                ),
              ),
              const SizedBox(height: 20),
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
              const SizedBox(height: 30.0),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                OutlinedBorderButtonLong(
                  text: "Cancel",
                  press: () => Get.back(),
                  textColor: kPrimaryColor,
                  borderColor: kPrimaryColor,
                  buttonWidth: .38,
                  borderRadius: 16.0,
                  imgName: "assets/graphics/ic_cancel_icon.png",
                ),
                const SizedBox(width: 10),
                RoundedButtonLong(
                  text: "Save",
                  press: () => Get.back(), // save new product to db.
                  buttonWidth: .38,
                  textColor: Colors.white,
                  imgName: "assets/graphics/ic_okay_icon.png",
                  onPrimaryColor: Colors.white54,
                  borderRadius: 16.0,
                ),
              ]),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 20),
                child: Divider(
                  color: kBlackColor30,
                  height: 1,
                ),
              ),
              OutlinedBorderButton(
                text: "Delete Category",
                press: () => {
                  Get.dialog(
                      CustomActionDialog(
                        title: "Delete Category?",
                        titleBtnYes: "Delete",
                        titleBtnNo: "No",
                        icon: "assets/graphics/ic_delete_green_icon.png",
                        iconNve: "assets/graphics/ic_cross_green_icon.png",
                        iconVe: "assets/graphics/ic_delete_icon_white.png",
                        description:
                            "Are you sure you want to delete this category? Delete category will delete all the products in this category as well.",
                        onYesPressed: () {
                          Get.back();
                          Get.dialog(
                              CustomAlertConfirmationDialog(
                                dialogHeight: 240,
                                titleText: "Sucess!",
                                descText: "Category deleted successfully.",
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
                },
                textColor: kPrimaryColor,
                borderColor: kPrimaryColor,
                buttonWidth: .77,
                imgName: "assets/graphics/ic_delete_green_small_icon.png",
              ),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
