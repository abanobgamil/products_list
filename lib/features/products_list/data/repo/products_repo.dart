import 'package:products_list/core/networking/api_error_handler.dart';
import 'package:products_list/core/networking/api_result.dart';
import 'package:products_list/core/networking/api_service.dart';
import 'package:products_list/features/products_list/data/model/products_model.dart';

class ProductsRepo{

  final ApiService _apiService;

  ProductsRepo(this._apiService);

  Future<ApiResult<List<ProductsModel>>> getProductsList() async {
    try {
      final response = await _apiService.getProducts();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }

}