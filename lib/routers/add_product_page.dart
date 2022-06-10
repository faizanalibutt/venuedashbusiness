import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_field.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  String? dropdownValue;
  var productCategoryList = ['Bakes', 'Vegetables', 'Dairy', 'Beverages'];
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Add a Product",
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
                height: 145,
                width: 145,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                    border: Border.all(width: 1, color: kPrimaryColor)),
                child: Padding(
                  padding: const EdgeInsets.all(35),
                  child: Image.asset("assets/graphics/ic_camera_green_icon.png"),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                "Upoload a Cover Picture", // Change Picture ID
                style: GoogleFonts.lato(
                  textStyle: const TextStyle(color: kBlackHeadingColor, fontSize: 10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Product Name",
                  style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                ),
              ),
              RoundedInputField(
                textInputType: TextInputType.text,
                onChanged: (value) {},
                focus: false,
                color: kPrimaryColor,
                textColor: kBlackFieldColor,
                cursorColor: kPrimaryColor,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Details",
                  style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                ),
              ),
              RoundedInputField(
                textInputType: TextInputType.text,
                onChanged: (value) {},
                focus: false,
                color: kPrimaryColor,
                textColor: kBlackFieldColor,
                cursorColor: kPrimaryColor,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Price (\$)",
                  style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                ),
              ),
              RoundedInputField(
                textInputType: TextInputType.number,
                onChanged: (value) {},
                focus: false,
                color: kPrimaryColor,
                textColor: kBlackFieldColor,
                cursorColor: kPrimaryColor,
              ),
              Container(
                padding: const EdgeInsets.only(left: 30),
                alignment: Alignment.topLeft,
                child: const Text(
                  "Product Category",
                  style: TextStyle(color: kBlackSubHeadingColor, fontSize: 10),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20.0, top: 3.0),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: size.width * .85,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
                      border: Border.all(width: 1, color: kPrimaryColor)),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    icon: Image.asset("assets/graphics/ic_dropdown_green_icon.png"),
                    elevation: 16,
                    isExpanded: true,
                    dropdownColor: Colors.white,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                            color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis)),
                    underline: Container(
                      height: 1,
                      color: Colors.transparent,
                    ),
                    hint: Text("Select a category -",
                        style: GoogleFonts.lato(
                          textStyle: const TextStyle(
                              color: kBlackSubHeadingColor, fontSize: 15, fontWeight: FontWeight.normal, overflow: TextOverflow.ellipsis),
                        )),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownValue = newValue!;
                      });
                    },
                    items: productCategoryList.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Row(
                children: [
                  InkWell(
                      onTap: () {
                        setState(() {
                          isChecked = !isChecked;
                        });
                      },
                      child: Container(
                          width: 40,
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: isChecked
                              ? SvgPicture.asset("assets/graphics/images/img_condition_check_green.svg")
                              : SvgPicture.asset("assets/graphics/images/condition_img_not_check.svg"))),
                  const Text("Add to Popular Items", style: TextStyle(color: kBlackSubHeadingColor, fontSize: 12))
                ],
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
              const SizedBox(height: 20),
            ],
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
    );
  }
}
