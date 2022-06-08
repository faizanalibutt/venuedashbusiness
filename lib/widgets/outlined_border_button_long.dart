import 'dart:ffi';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class OutlinedBorderButtonLong extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color, textColor;
  final String imgName;
  final double buttonWidth;
  final Color borderColor;
  final double borderRadius;
  const OutlinedBorderButtonLong({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    required this.imgName,
    this.buttonWidth = .85,
    this.borderColor = Colors.white,
    this.borderRadius = 14.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * buttonWidth,
      child: ClipRRect(
        child: outlinedBorderButton(context),
      ),
    );
  }

  Widget outlinedBorderButton(BuildContext context) {
    return TextButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imgName,
          ),
          const SizedBox(
            width: 10,
          ),
          AutoSizeText(
            text,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              color: textColor,
              fontSize: 12,
              fontWeight: FontWeight.bold,
            )),
            minFontSize: 8,
          )
        ],
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          side: BorderSide(color: borderColor),
        ),
        onPrimary: borderColor,
        padding: const EdgeInsets.all(18),
      ),
    );
  }
}
