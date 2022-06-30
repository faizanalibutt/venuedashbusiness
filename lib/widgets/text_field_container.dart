import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double fieldWidth;
  final double bottomPadding;
  final double topPadding;
  final double borderRadius;

  const TextFieldContainer({
    Key? key,
    required this.child,
    this.borderColor = Colors.white,
    this.fieldWidth = .85,
    this.bottomPadding = 20,
    this.topPadding = 3,
    this.borderRadius = 30.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(bottom: bottomPadding, top: topPadding),
      width: size.width * fieldWidth,
      height: 50,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(color: borderColor, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
      ),
      child: child,
    );
  }
}
