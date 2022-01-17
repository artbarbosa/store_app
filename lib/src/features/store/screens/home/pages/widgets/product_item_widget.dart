import 'dart:math';

import 'package:flutter/material.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/features/store/screens/details/container/details_container.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({
    Key? key,
    required this.product,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  final ProductModel product;
  final Function(String, DetailArguments) onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
              color: const Color(0xFFECECEC),
              width: 1,
              style: BorderStyle.solid)),
      child: GestureDetector(
        onTap: () =>
            onTap('/detail', DetailArguments(product: product, index: index)),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: Hero(
                    tag: 'item',
                    child: Image.network(product.image,
                        height: MediaQuery.of(context).size.height * 0.25,
                        width: MediaQuery.of(context).size.width * 0.4,
                        fit: BoxFit.contain),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, top: 30),
                      child: Text.rich(TextSpan(
                          style: const TextStyle(fontFamily: 'Rocko'),
                          text: '\$ ${product.price.toDouble().toString()}')),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text.rich(
                          TextSpan(
                              style: const TextStyle(
                                  fontFamily: 'Rocko', fontSize: 13),
                              text: product.title),
                          maxLines: 1),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Icon(Icons.bookmark_outline, size: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
