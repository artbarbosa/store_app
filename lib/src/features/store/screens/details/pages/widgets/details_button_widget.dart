import 'package:flutter/material.dart';

class DetailsButtonWidget extends StatelessWidget {
  const DetailsButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
          child: const Text(
            "Add to Basket",
            style: TextStyle(color: Colors.white),
          ),
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            elevation: 6,
            side: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
            fixedSize: Size(MediaQuery.of(context).size.width * 0.75,
                MediaQuery.of(context).size.width * 0.15),
            primary: const Color(0xFFFB3403),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(35),
            ),
          ),
        );
  }
}