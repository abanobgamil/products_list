import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:products_list/core/networking/api_service.dart';
import 'package:products_list/core/networking/dio_factory.dart';
import 'package:products_list/features/products_list/data/repo/products_repo.dart';
import 'package:products_list/features/products_list/presentation/cubit/products_cubit.dart';


final GetIt getIt = GetIt.instance;

void setupLocator() {

  Dio dio = DioFactory.getDio();

  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  getIt.registerFactory<ProductsRepo>(() => ProductsRepo(getIt()));

  getIt.registerFactory<ProductsCubit>(() => ProductsCubit(getIt()));

}
