import "package:flutter/material.dart";
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';

class ProductAddCategoryPage extends StatelessWidget {
  const ProductAddCategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Add Product Category",
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
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }
}
