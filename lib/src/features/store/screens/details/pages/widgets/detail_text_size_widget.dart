import 'package:flutter/material.dart';

class DetailTextSizeWidget extends StatelessWidget {
  const DetailTextSizeWidget({Key? key, required this.text}) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return   Container(
          height: MediaQuery.of(context).size.height * 0.15,
          width: MediaQuery.of(context).size.width * 0.13,
          child:  Center(
              child: Text(text,
                  style: const TextStyle(
                      fontFamily: 'Rocko', fontWeight: FontWeight.bold))),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: const Color(0xFFECECEC))),
        );
  }
}