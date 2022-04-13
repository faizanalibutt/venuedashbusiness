import 'package:flutter/material.dart';
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
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      fieldWidth: fieldWidth,
      child: TextField(
        onChanged: onChanged,
        cursorColor: cursorColor,
        keyboardType: textInputType,
        autofocus: focus,
        textAlign: TextAlign.start,
        style: TextStyle(color: textColor, height: 1.5),
        decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.symmetric(horizontal: 20)),
        inputFormatters: inputFormatter != null ? [inputFormatter!] : [MaskTextInputFormatter()],
      ),
      borderColor: color,
    );
  }
}
