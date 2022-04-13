import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double fieldWidth;

  const TextFieldContainer(
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
      width: size.width * fieldWidth,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      ),
      child: child,
    );
  }
}
