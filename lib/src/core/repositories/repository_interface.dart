import 'package:store_app/src/core/models/category_model.dart';
import 'package:store_app/src/core/models/product_model.dart';

abstract class IRepository {
  Future<List<ProductModel>> getAllProducts();
  Future<List<CategoryModel>> getAllCategories();
  Future<List<ProductModel>> getSingleCategory(String category);
}
