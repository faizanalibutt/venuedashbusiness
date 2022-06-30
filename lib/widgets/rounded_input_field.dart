import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:venuedashbusiness/widgets/text_field_container.dart';
import '../utils/constants.dart';

class RoundedInputField extends StatelessWidget {
  final ValueChanged<String>? onChanged;
  final TextInputType textInputType;
  final bool focus;
  final Color color;
  final Color textColor;
  final Color cursorColor;
  final double fieldWidth;
  final double bottomPadding;
  final double topPadding;
  final double borderRadius;
  final MaskTextInputFormatter? inputFormatter;

  const RoundedInputField({
    Key? key,
    this.onChanged,
    this.focus = false,
    required this.textInputType,
    this.color = Colors.white,
    this.textColor = kWhite700Color,
    this.cursorColor = Colors.white,
    this.fieldWidth = .85,
    this.inputFormatter,
    this.bottomPadding = 20,
    this.topPadding = 3,
    this.borderRadius = 30.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      fieldWidth: fieldWidth,
      bottomPadding: bottomPadding,
      topPadding: topPadding,
      borderRadius: borderRadius,
      child: TextField(
        onChanged: onChanged,
        cursorColor: cursorColor,
        keyboardType: textInputType,
        autofocus: focus,
        textAlign: TextAlign.start,
        style: GoogleFonts.lato(textStyle: TextStyle(color: textColor, height: 1.5)),
        decoration: const InputDecoration(border: InputBorder.none, contentPadding: EdgeInsets.symmetric(horizontal: 20)),
        inputFormatters: inputFormatter != null ? [inputFormatter!] : [MaskTextInputFormatter()],
      ),
      borderColor: color,
    );
  }
}
