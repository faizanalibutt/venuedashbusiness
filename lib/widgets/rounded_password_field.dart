import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:venuedashbusiness/utils/constants.dart';
import 'package:venuedashbusiness/widgets/text_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final IconData? icon;
  final ValueChanged<String>? onChanged;

  final bool isPwdVisible;
  final VoidCallback pwdCallbackOn;
  final VoidCallback pwdCallbackOff;
  final Color borderColor;
  final Color textColor;
  final Color iconColor;
  final Color cursorColor;

  const RoundedPasswordField(
      {Key? key,
      this.icon,
      this.onChanged,
      required this.isPwdVisible,
      required this.pwdCallbackOn,
      required this.pwdCallbackOff,
      this.borderColor = Colors.white,
      this.textColor = kWhite700Color,
      this.iconColor = kPrimaryLightColor,
      this.cursorColor = Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: isPwdVisible,
        onChanged: onChanged,
        cursorColor: cursorColor,
        textAlign: TextAlign.start,
        style: GoogleFonts.lato(textStyle: TextStyle(color: textColor, height: 1.5)),
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            border: InputBorder.none,
            suffixIcon: !isPwdVisible
                ? IconButton(
                    onPressed: () {
                      pwdCallbackOn();
                    },
                    icon: Icon(Icons.visibility, color: iconColor))
                : IconButton(
                    onPressed: () {
                      pwdCallbackOff();
                    },
                    icon: Icon(Icons.visibility_off, color: iconColor))),
      ),
      borderColor: borderColor,
    );
  }
}
