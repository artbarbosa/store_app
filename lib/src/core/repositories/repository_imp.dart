
import 'package:dio/dio.dart';
import 'package:store_app/src/core/consts/api_consts.dart';
import 'package:store_app/src/core/models/category_model.dart';
import 'package:store_app/src/core/models/product_model.dart';
import 'package:store_app/src/core/repositories/repository_interface.dart';

class RepositoryImp implements IRepository {
  final Dio dio;
  RepositoryImp({required this.dio});

  @override
  Future<List<ProductModel>> getAllProducts() async {
    final response = await dio.get(ApiConst.getAllProductsUrl);
    final list = response.data as List<dynamic>;
    final result = list.map((e) => ProductModel.fromJson(e)).toList();
    return result;
  }

  @override
  Future<List<ProductModel>> getSingleCategory(String category) async {
    final response = await dio.get(ApiConst.getSinlgeCategoryUrl + category);
    final list = response.data as List<dynamic>;
    final result = list.map((e) => ProductModel.fromJson(e)).toList();
    return result;
  }

  @override
  Future<List<CategoryModel>> getAllCategories() async {
    final response = await dio.get(ApiConst.getAllCategoriesUrl);
    final list = response.data as List<dynamic>;
    final result = list.map((e) => CategoryModel.fromJson(e)).toList();
    return result;
  }
}
