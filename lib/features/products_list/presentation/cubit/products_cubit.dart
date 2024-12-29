import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_list/features/products_list/data/model/products_model.dart';
import 'package:products_list/features/products_list/data/repo/products_repo.dart';
import 'package:products_list/features/products_list/presentation/cubit/products_states.dart';

class ProductsCubit extends Cubit<ProductsStates> {
  ProductsCubit(this.productsRepo) : super(InitState());

  final ProductsRepo productsRepo;

  static ProductsCubit get(context) => BlocProvider.of(context);

  late List<ProductsModel> products = [];

  void getProducts() async {
    final response = await productsRepo.getProductsList();
    response.when(success: (productsModelList) {
      for (var element in productsModelList) {
        products.add(element);
      }
     emit(GetProductsSuccess());
    }, failure: (error) {
     emit(GetProductsError());
    });
  }

}
