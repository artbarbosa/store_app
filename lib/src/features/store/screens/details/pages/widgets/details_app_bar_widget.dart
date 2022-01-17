import 'package:flutter/material.dart';
import 'package:store_app/src/core/models/product_model.dart';

class DetailAppBarWidget extends StatelessWidget {
  const DetailAppBarWidget({
    Key? key,
    required this.product,
    required this.onBack,
  }) : super(key: key);
  final ProductModel product;
  final VoidCallback onBack;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: onBack,
        icon: const Icon(Icons.chevron_left, color: Colors.black,),
      ),
      centerTitle: false,
      title: Text(
        product.title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}