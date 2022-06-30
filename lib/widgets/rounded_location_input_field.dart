import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/widgets/text_field_location_container.dart';
import '../utils/constants.dart';

class RoundedLocationInputField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextInputType textInputType;
  final bool focus;
  final Color color;
  final Color textColor;
  final Color cursorColor;
  final String hintText;
  final Color hintTextColor;
  final TextEditingController? textController;

  final double fieldWidth;

  final VoidCallback? fieldIconCallback;

  const RoundedLocationInputField({
    Key? key,
    this.onChanged,
    this.focus = false,
    required this.textInputType,
    this.color = Colors.white,
    this.textColor = kWhite700Color,
    this.cursorColor = Colors.white,
    this.hintText = "",
    this.hintTextColor = kBlackColor30,
    this.textController,
    this.fieldWidth = .85,
    this.fieldIconCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return TextFieldLocationContainer(
      child: SizedBox(
        width: size.width * fieldWidth,
        child: TextField(
          onChanged: onChanged,
          cursorColor: cursorColor,
          keyboardType: textInputType,
          autofocus: focus,
          style: GoogleFonts.lato(textStyle: TextStyle(color: textColor)),
          cursorWidth: 1,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 16, right: 0),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30.0),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                )),
            fillColor: kLoationFiedlBgColor,
            hintText: hintText,
            hintStyle: GoogleFonts.lato(textStyle: TextStyle(color: hintTextColor)),
            filled: true,
            // enabledBorder: UnderlineInputBorder(
            //   borderSide: const BorderSide(color: kLoationFiedlBgColor),
            //   borderRadius: BorderRadius.circular(40),
            // ),
            suffixIcon: InkWell(
                onTap: () => fieldIconCallback!(),
                child: Container(
                  height: 5,
                  padding: const EdgeInsets.only(
                    top: 3,
                    right: 0,
                  ),
                  child: SvgPicture.asset(
                    "assets/graphics/images/ic_location_search.svg",
                  ),
                )),
          ),
          controller: textController,
        ),
      ),
    );
  }
}
