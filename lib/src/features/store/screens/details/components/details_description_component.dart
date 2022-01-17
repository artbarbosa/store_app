import 'package:flutter/material.dart';

class DetailsDescriptionComponent extends StatelessWidget {
  const DetailsDescriptionComponent({Key? key, this.product}) : super(key: key);
  final product;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'Drescipition:',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rocko',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8F9093)),
            ),
          ),
          const SizedBox(height: 3),
          Text(product, style: const TextStyle(fontFamily: 'Rocko'))
        ],
      ),
    );
  }
}
