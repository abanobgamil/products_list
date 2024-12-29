import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_list/core/theming/app_colors.dart';

class CustomTextW700 extends StatelessWidget {
  const CustomTextW700({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.w700,
    this.color = AppColors.black,
    this.textDecoration,
    this.textHeight,
  });

  final String? text;
  final double? fontSize;
  final double? textHeight;
  final FontWeight? fontWeight;
  final Color color;
  final TextDecoration? textDecoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: TextStyle(
        fontSize: fontSize ?? 13.sp,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
        height: textHeight,
        overflow: TextOverflow.ellipsis
      ),
      maxLines: 1,
    );
  }
}
