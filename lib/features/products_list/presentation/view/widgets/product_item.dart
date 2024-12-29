import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_list/core/widgets/custom_text_w400.dart';
import 'package:products_list/core/widgets/custom_text_w700.dart';
import 'package:products_list/features/products_list/data/model/products_model.dart';
import 'package:products_list/features/products_list/presentation/cubit/products_cubit.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key, required this.productsModelList, required this.index});

  final List<ProductsModel> productsModelList;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedNetworkImage(imageUrl: productsModelList[index].images[0],height: 150.h,width: 120.w,fit: BoxFit.fill),
        SizedBox(
          width: 10.w,
        ),
        Expanded(
          child: Padding(
            padding:  EdgeInsets.only(top: 10.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTextW700(text: productsModelList[index].title,fontSize: 15.sp,),
                SizedBox(
                  height: 5.h,
                ),
                CustomTextW400(text: productsModelList[index].description ?? "not found description",fontSize: 15.sp,)   ,
                SizedBox(
                  height: 5.h,
                ),
                CustomTextW400(text: "\$${productsModelList[index].price}" ?? "",color: const Color(
                    0xB0BB8B08),fontSize: 15.sp,),
                SizedBox(
                  height: 5.h,
                ),
                Row(
                  children: [
                    Icon(Icons.star,color: const Color(0xB0BB8B08),size: 20.r,),
                    SizedBox(width: 3.w,),
                    const CustomTextW400(text: "4.8 Rating")
                  ],
                ),
                // SizedBox(
                //   height: 5.h,
                // ),
                 Row(children: [
                  const CustomTextW700(text: "Size"),
                   SizedBox(width: 10.w,),
                   CircleAvatar(
                     radius: 13.r,
                     backgroundColor: Colors.black,
                     child: CircleAvatar(
                       radius: 12.5.r,
                       backgroundColor: Colors.white,
                       child: CustomTextW400(text: 'S',),
                     ),
                   ),
                   SizedBox(width: 10.w,),
                   CircleAvatar(
                     radius: 13.r,
                     backgroundColor: Colors.black,
                     child: CircleAvatar(
                       radius: 12.5.r,
                       backgroundColor: Colors.white,
                       child: CustomTextW400(text: 'M',),
                     ),
                   ),
                   SizedBox(width: 10.w,),
                   CircleAvatar(
                     radius: 13.r,
                     backgroundColor: Colors.black,
                     child: CircleAvatar(
                       radius: 12.5.r,
                       backgroundColor: Colors.white,
                       child: CustomTextW400(text: 'L',),
                     ),
                   ),
                   const Spacer(),
                   IconButton(onPressed: (){}, icon:const Icon( Icons.favorite_border,color: Color(0xB0BB8B08),))
                ],),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
