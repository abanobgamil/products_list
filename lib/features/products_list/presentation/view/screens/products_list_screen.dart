import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_list/core/dependency_injection/setup_git.dart';
import 'package:products_list/features/products_list/presentation/cubit/products_cubit.dart';
import 'package:products_list/features/products_list/presentation/cubit/products_states.dart';
import 'package:products_list/features/products_list/presentation/view/widgets/product_item.dart';

class ProductsListScreen extends StatelessWidget {
  const ProductsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ProductsCubit>(
      create: (BuildContext context) =>
      getIt<ProductsCubit>()
        ..getProducts(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            child: BlocBuilder<ProductsCubit, ProductsStates>(
              builder: (BuildContext context, state) {
                return ListView.separated(
                    itemBuilder: (context,index)=>  ProductItem(productsModelList: ProductsCubit.get(context).products,index: index,),
                    separatorBuilder: (context,index) => SizedBox(height: 10.h,),
                    itemCount: ProductsCubit.get(context).products.length);
              },
            ),
          ),
        ),
      ),
    );
  }
}
