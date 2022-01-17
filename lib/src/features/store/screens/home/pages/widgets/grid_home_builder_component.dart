import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/features/store/screens/details/container/details_container.dart';
import 'package:store_app/src/features/store/screens/home/pages/widgets/product_item_widget.dart';

class GridHomeBuilderComponent extends StatelessWidget {
  const GridHomeBuilderComponent(
      {Key? key, required this.productList, required this.onItemTap})
      : super(key: key);

  final List<ProductModel> productList;
  final dynamic Function(String, DetailArguments) onItemTap;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return SliverGrid.count(
        childAspectRatio: 0.66,
        crossAxisCount: 2,
        children: productList.map(
          (e) {
            return ProductItemWidget(
              onTap: onItemTap,
              product: e,
              index: productList.indexOf(e),
            );
          },
        ).toList(),
      );
    });
  }
}
