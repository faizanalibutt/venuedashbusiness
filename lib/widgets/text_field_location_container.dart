import 'package:flutter/material.dart';

class TextFieldLocationContainer extends StatelessWidget {
  final Widget child;

  const TextFieldLocationContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(30.0),
      elevation: 5,
      shadowColor: const Color(0x40000000),
      child: child,
    );
  }
}
