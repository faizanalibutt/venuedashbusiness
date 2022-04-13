import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TapRichText extends StatelessWidget {
  final VoidCallback tapEmailResponse;

  const TapRichText({Key? key, tapEmai, required this.tapEmailResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle defaultStyle = GoogleFonts.lato(
      textStyle: const TextStyle(color: Colors.white, fontSize: 12),
    );
    TextStyle linkStyle = GoogleFonts.lato(
      textStyle: const TextStyle(color: Colors.white, fontSize: 12),
      decoration: TextDecoration.underline,
    );
    return RichText(
      text: TextSpan(
        style: defaultStyle,
        children: <TextSpan>[
          TextSpan(
              text: 'Tap here',
              style: linkStyle,
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  tapEmailResponse();
                }),
          const TextSpan(text: ' if you forgot your email.'),
        ],
      ),
    );
  }
}
