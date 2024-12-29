import 'package:dio/dio.dart';
import 'package:products_list/core/networking/api_constants.dart';
import 'package:products_list/features/products_list/data/model/products_model.dart';
import 'package:retrofit/retrofit.dart';

 part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.products)
  Future<List<ProductsModel>> getProducts();

}