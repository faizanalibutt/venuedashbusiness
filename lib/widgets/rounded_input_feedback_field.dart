import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/widgets/text_field_feedback_container.dart';
import '../utils/constants.dart';

class RoundedInputFeedackField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextInputType textInputType;
  final bool focus;
  final Color color;
  final Color textColor;
  final Color cursorColor;
  final double fieldWidth;

  const RoundedInputFeedackField({
    Key? key,
    this.onChanged,
    this.focus = false,
    required this.textInputType,
    this.color = Colors.white,
    this.textColor = kWhite700Color,
    this.cursorColor = Colors.white,
    this.fieldWidth = .85,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldFeedbackContainer(
      fieldWidth: fieldWidth,
      child: TextField(
        onChanged: onChanged,
        cursorColor: cursorColor,
        keyboardType: textInputType,
        autofocus: focus,
        maxLines: null,
        style: GoogleFonts.lato(
            textStyle: const TextStyle(
          color: kBlackHeadingColor,
          fontWeight: FontWeight.normal,
        )),
        decoration: const InputDecoration(
          border: InputBorder.none,
        ),
      ),
      borderColor: color,
    );
  }
}