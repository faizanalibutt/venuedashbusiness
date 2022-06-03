import 'package:flutter/foundation.dart';
import "package:flutter/material.dart";
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/custom_alert_confirmation_dialog.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_input_feedback_field.dart';

class FeedbackPage extends StatelessWidget {
  const FeedbackPage({Key? key}) : super(key: key);

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
                child: Text("Give us Feedback",
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: size.width * .025,
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
            child: Padding(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SvgPicture.asset(
                        "assets/graphics/images/feedback_bg_img.svg"),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10),
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Feedback",
                        style: TextStyle(
                            color: kBlackSubHeadingColor, fontSize: 10),
                      ),
                    ),
                    RoundedInputFeedackField(
                      fieldWidth: .9,
                      textInputType: TextInputType.text,
                      onChanged: (value) {},
                      color: kPrimaryColor,
                      textColor: kBlackFieldColor,
                      cursorColor: kPrimaryColor,
                    ),
                    RatingBar.builder(
                      initialRating: 2,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      glow: false,
                      unratedColor: kLoationFiedlBgColor,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: kRatingFullColor,
                      ),
                      onRatingUpdate: (rating) {
                        if (kDebugMode) print(rating);
                      },
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RoundedButtonLong(
                      buttonWidth: .9,
                      text: "Submit Feedback",
                      press: () => Get.dialog(CustomAlertConfirmationDialog(
                          dialogHeight: 240,
                          titleText: "Thank You!",
                          descText: "Your feedback is submitted successfully.",
                          onConfirmPressed: () => Get.back())),
                      imgName: 'assets/graphics/ic_feedback_white_icon.png',
                      color: kPrimaryColor,
                      textColor: Colors.white,
                      onPrimaryColor: Colors.white54,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).viewInsets.bottom,
                    ),
                  ],
                ),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            ),
          ),
        ],
      ),
    );
  }
}
