import 'package:flutter/material.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/features/store/screens/details/components/details_color_component.dart';
import 'package:store_app/src/features/store/screens/details/components/details_description_component.dart';
import 'package:store_app/src/features/store/screens/details/components/details_price_component.dart';
import 'package:store_app/src/features/store/screens/details/components/details_size_component.dart';
import 'package:store_app/src/features/store/screens/details/pages/widgets/details_button_widget.dart';

class DetailListWidget extends StatelessWidget {
  const DetailListWidget({
    Key? key,
    required this.product,
    required this.list,
    required this.controller,
    required this.onChangeProduct,
  }) : super(key: key);
  final ProductModel product;
  final List<ProductModel> list;
  final PageController controller;
  final ValueChanged<ProductModel> onChangeProduct;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(children: [
        //Image
        Container(
          decoration:
              BoxDecoration(border: Border.all(color: const Color(0xFFECECEC))),
          height: 360,
          width: double.maxFinite,
          child: Hero(
            tag: 'item',
            child: Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: Image.network(product.image, fit: BoxFit.contain),
            ),
          ),
        ),
        const Divider(height: 2, color: Color(0xFFECECEC)),
        if (product.category == "men's clothing" ||
            product.category == "women's clothing") ...[
          //Size
          const DetailsSizeComponent(),
          //Color:
          const Divider(height: 0.4, color: Color(0xFFECECEC)),
          const DetailsColorComponent(),
          const Divider(height: 0.4, color: Color(0xFFECECEC)),
          //Drescipition
          DetailsDescriptionComponent(product: product.description),
          DetailsPriceComponent(product: product.price),

          const DetailsButtonWidget()
        ] else ...[
          const Divider(height: 0.4, color: Color(0xFFECECEC)),
          //Drescipition
          DetailsDescriptionComponent(product: product.description),

          DetailsPriceComponent(product: product.price),

          const DetailsButtonWidget()
        ],
      ]),
    );
  }
}
