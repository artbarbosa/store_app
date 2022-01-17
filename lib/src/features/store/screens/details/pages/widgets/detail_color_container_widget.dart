import 'package:flutter/material.dart';

class DetailColorContainerWidget extends StatelessWidget {
  const DetailColorContainerWidget({Key? key, required this.color})
      : super(key: key);
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 7.0),
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width * 0.08,
        child: Center(
            child: Container(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        )),
      ),
    );
  }
}
