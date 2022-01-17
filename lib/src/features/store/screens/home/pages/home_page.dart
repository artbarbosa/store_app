import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:store_app/src/core/models/category_model.dart';

import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/core/repositories/repository_interface.dart';
import 'package:store_app/src/features/store/screens/details/container/details_container.dart';
import 'package:store_app/src/features/store/screens/home/stores/home_store.dart';

import 'components/app_bar_component.dart';
import 'components/bottom_navigator_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.productList,
    required this.onItemTap,
    required this.categoryList,
    required this.controller,
  }) : super(key: key);
  final List<ProductModel> productList;
  final List<CategoryModel> categoryList;
  final Function(String, DetailArguments) onItemTap;
  final HomeStore controller;

  @override
  Widget build(BuildContext context) {
    final double currentHeight = MediaQuery.of(context).size.height;
    final double currentWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          CustomScrollView(
            slivers: <Widget>[
              AppBarComponent(
                controller: controller,
                list: categoryList,
              ),
              Observer(builder: (_) {
                return controller.cardsHomeBuilder(
                    onItemTap, productList);
              }),
            ],
          ),
          const Positioned(
              bottom: 0, left: 0, right: 0, child: BottomNavigatorComponent())
        ],
      ),
    );
  }
}
