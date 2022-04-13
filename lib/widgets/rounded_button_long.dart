import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';

class RoundedButtonLong extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final Color color;
  final Color? textColor;
  final String imgName;
  final bool isSVG;
  final Color onPrimaryColor;
  final double buttonWidth;

  const RoundedButtonLong({
    Key? key,
    required this.text,
    required this.press,
    this.color = kPrimaryColor,
    this.textColor = Colors.black,
    this.imgName = "assets/graphics/ic_okay_icon.png",
    this.isSVG = false,
    this.onPrimaryColor = kPrimaryColor,
    this.buttonWidth = .85,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * buttonWidth,
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black12,
          spreadRadius: 4,
          blurRadius: 14,
          offset: Offset(0, 3),
        )
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          isSVG ? SvgPicture.asset(imgName) : Image.asset(imgName),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: GoogleFonts.lato(
                textStyle: TextStyle(
              color: textColor,
              fontSize: 12,
            )),
          )
        ],
      ),
      onPressed: press,
      style: ElevatedButton.styleFrom(
        primary: color,
        onPrimary: onPrimaryColor,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      ),
    );
  }
}
