import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/utils/dimensions.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class CustomActionDialog extends StatelessWidget {
  final String iconVe, iconNve, icon;
  final String? title;
  final String description;
  final String titleBtnNo;
  final String titleBtnYes;
  final Function onYesPressed;
  final Function? onNoPressed;
  final bool isSvg;

  const CustomActionDialog({
    Key? key,
    this.icon = "assets/graphics/images/forget_circle_img.svg",
    this.iconVe = "assets/graphics/ic_okay_icon.png",
    this.iconNve = "assets/graphics/ic_cancel_icon.png",
    this.title,
    required this.description,
    required this.onYesPressed,
    this.onNoPressed,
    this.titleBtnNo = "Deny",
    this.titleBtnYes = "OKay",
    this.isSvg = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          title != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: Dimensions.PADDING_SIZE_LARGE),
                  child: Text(
                    title!,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        textStyle: const TextStyle(
                      color: kBlackHeadingColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    )),
                  ),
                )
              : const SizedBox(),
          Padding(
            padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
            child: isSvg ? SvgPicture.asset(icon) : Image.asset(icon),
          ),
          AutoSizeText(
            description,
            style: GoogleFonts.lato(
                textStyle:
                    const TextStyle(color: kBlackDescColor, fontSize: 12)),
            minFontSize: 8,
            maxLines: 3,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
          Row(children: [
            Expanded(
              child: OutlinedBorderButtonLong(
                text: titleBtnNo,
                press: () {
                  Get.back();
                  onNoPressed;
                },
                textColor: kPrimaryColor,
                borderColor: kPrimaryColor,
                imgName: iconNve,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: RoundedButtonLong(
                buttonWidth: 1,
                text: titleBtnYes,
                press: () => onYesPressed(),
                textColor: Colors.white,
                imgName: iconVe,
                onPrimaryColor: Colors.white54,
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
