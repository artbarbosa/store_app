import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/core/repositories/repository_interface.dart';
import 'package:store_app/src/features/store/screens/details/container/details_container.dart';
import 'package:store_app/src/features/store/screens/home/pages/widgets/grid_home_builder_component.dart';

part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  _HomeStore({
    required this.repository,
  });

  @observable
  late List<ProductModel> _productList;

  @observable
  IRepository repository;

  @observable
  String category = 'All';

  @action
  List<ProductModel> productList(List<ProductModel> productList) {
    return _productList = productList;
  }

  @action
  Future<List<Object>> getAllCategories() async {
    return repository.getAllCategories();
  }

  @action
  Future<List<Object>> changeCategory() async {
    if (category == 'All') {
      return repository.getAllProducts();
    } else {
      return repository.getSingleCategory(category);
    }
  }

  @action
  Widget cardsHomeBuilder(dynamic Function(String, DetailArguments) onItemTap,
      List<ProductModel> productList) {
    return GridHomeBuilderComponent(
      onItemTap: onItemTap,
      productList: productList,
    );
  }
}
