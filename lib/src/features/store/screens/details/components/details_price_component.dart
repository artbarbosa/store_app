import 'package:flutter/material.dart';

class DetailsPriceComponent extends StatelessWidget {
  const DetailsPriceComponent({Key? key, this.product}) : super(key: key);
  final product;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 6),
            child: Text(
              'Price:',
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Rocko',
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF8F9093)),
            ),
          ),
          const Spacer(),
          Center(
              child: Padding(
                padding: const EdgeInsets.only(right: 25),
                child: Text('\$ ${product.toDouble().toString()}',
                    style: const TextStyle(
                        fontFamily: 'Rocko', fontWeight: FontWeight.bold,fontSize: 20)),
              )),
        ],
      ),
    );
  }
}
