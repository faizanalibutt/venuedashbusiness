import 'package:flutter/material.dart';

class TextFieldFeedbackContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double fieldWidth;

  const TextFieldFeedbackContainer(
      {Key? key,
      required this.child,
      this.borderColor = Colors.white,
      this.fieldWidth = .85})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(bottom: 20, top: 3),
      padding: const EdgeInsets.only(left: 10, right: 10, top: 3, bottom: 3),
      width: size.width * fieldWidth,
      height: size.height * .2,
      alignment: Alignment.topLeft,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(24.0)),
      ),
      child: child,
    );
  }
}
