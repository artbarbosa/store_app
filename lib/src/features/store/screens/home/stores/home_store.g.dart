// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  final _$_productListAtom = Atom(name: '_HomeStore._productList');

  @override
  List<ProductModel> get _productList {
    _$_productListAtom.reportRead();
    return super._productList;
  }

  @override
  set _productList(List<ProductModel> value) {
    _$_productListAtom.reportWrite(value, super._productList, () {
      super._productList = value;
    });
  }

  final _$repositoryAtom = Atom(name: '_HomeStore.repository');

  @override
  IRepository get repository {
    _$repositoryAtom.reportRead();
    return super.repository;
  }

  @override
  set repository(IRepository value) {
    _$repositoryAtom.reportWrite(value, super.repository, () {
      super.repository = value;
    });
  }

  final _$categoryAtom = Atom(name: '_HomeStore.category');

  @override
  String get category {
    _$categoryAtom.reportRead();
    return super.category;
  }

  @override
  set category(String value) {
    _$categoryAtom.reportWrite(value, super.category, () {
      super.category = value;
    });
  }

  final _$getAllCategoriesAsyncAction =
      AsyncAction('_HomeStore.getAllCategories');

  @override
  Future<List<Object>> getAllCategories() {
    return _$getAllCategoriesAsyncAction.run(() => super.getAllCategories());
  }

  final _$changeCategoryAsyncAction = AsyncAction('_HomeStore.changeCategory');

  @override
  Future<List<Object>> changeCategory() {
    return _$changeCategoryAsyncAction.run(() => super.changeCategory());
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  List<ProductModel> productList(List<ProductModel> productList) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.productList');
    try {
      return super.productList(productList);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget cardsHomeBuilder(dynamic Function(String, DetailArguments) onItemTap,
      List<ProductModel> productList) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.cardsHomeBuilder');
    try {
      return super.cardsHomeBuilder(onItemTap, productList);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
repository: ${repository},
category: ${category}
    ''';
  }
}
