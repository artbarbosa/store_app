import 'package:flutter/material.dart';

class TextCategoryWidget extends StatelessWidget {
  const TextCategoryWidget(
      {Key? key, required this.text, this.isActivy = false})
      : super(key: key);
  final String text;
  final bool isActivy;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Rocko',
        color: isActivy ? Colors.black : const Color(0xFFB1B1B2),
      ), /* Color(0xFFB1B1B2)*/
    );
  }
}
