import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class OutlinedBorderButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color;
  final Color textColor;
  final String imgName;
  final double buttonWidth;
  final Color borderColor;

  const OutlinedBorderButton({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.white,
    this.imgName = "assets/graphics/ic_okay_icon.png",
    this.buttonWidth = .42, 
    this.borderColor = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
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
            )),
            minFontSize: 8,
          )
        ],
      ),
      onPressed: press,
      style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(17)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(color: borderColor)))),
    );
  }
}
