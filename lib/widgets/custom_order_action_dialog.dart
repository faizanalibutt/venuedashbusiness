import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/utils/dimensions.dart';
import 'package:venuedashbusiness/widgets/outlined_border_button_long.dart';
import 'package:venuedashbusiness/widgets/rounded_button_long.dart';

class CustomOrderActionDialog extends StatefulWidget {
  final String iconVe, iconNve, icon;
  final String? title;
  final String description;
  final String titleBtnNo;
  final String titleBtnYes;
  final Function onYesPressed;
  final Function? onNoPressed;
  final bool isSvg;

  const CustomOrderActionDialog({
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
  State<CustomOrderActionDialog> createState() => _CustomOrderActionDialogState();
}

class _CustomOrderActionDialogState extends State<CustomOrderActionDialog> {
  var color = kPrimaryColor;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(Dimensions.PADDING_SIZE_LARGE),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          widget.title != null
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: Dimensions.PADDING_SIZE_LARGE),
                  child: Text(
                    widget.title!,
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
          const SizedBox(height: Dimensions.PADDING_SIZE_SMALL),
          AutoSizeText(
            widget.description,
            style: GoogleFonts.lato(textStyle: const TextStyle(color: kBlackDescColor, fontSize: 12)),
            minFontSize: 8,
            maxLines: 3,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: Dimensions.PADDING_SIZE_LARGE),
          Material(
            child: SizedBox(
              height: 150,
              child: MediaQuery.removePadding(
                context: context,
                removeTop: true,
                child: GridView.builder(
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 2.5,
                      mainAxisSpacing: 7,
                      crossAxisSpacing: 4,
                    ),
                    itemCount: 12,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(width: 1, color: color),
                          borderRadius: const BorderRadius.all(Radius.circular(16)),
                        ),
                        alignment: Alignment.center,
                        child: InkWell(
                          onTap: () => {
                            setState(() {
                              color = kBlackColor30;
                            }),
                          },
                          child: Text(
                            "30 minutes",
                            style: GoogleFonts.lato(textStyle: const TextStyle(color: kPrimaryColor, fontSize: 12)),
                          ),
                        ),
                      );
                    }),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Row(children: [
            Expanded(
              child: OutlinedBorderButtonLong(
                text: widget.titleBtnNo,
                press: () {
                  Get.back();
                  widget.onNoPressed;
                },
                textColor: kPrimaryColor,
                borderColor: kPrimaryColor,
                imgName: widget.iconNve,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: RoundedButtonLong(
                buttonWidth: 1,
                text: widget.titleBtnYes,
                press: () => widget.onYesPressed(),
                textColor: Colors.white,
                imgName: widget.iconVe,
                onPrimaryColor: Colors.white54,
              ),
            ),
          ])
        ]),
      ),
    );
  }
}
