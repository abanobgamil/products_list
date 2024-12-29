import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:products_list/core/theming/app_colors.dart';

class CustomTextW400 extends StatelessWidget {
  const CustomTextW400({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.black,
    this.textDecoration,
    this.textAlign,
    this.textDirection = TextDirection.rtl,
    this.height,
  });

  final String text;
  final double? height;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  final TextDirection? textDirection;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textDirection: textDirection,
      textAlign: textAlign,
      style: TextStyle(
        height: height,
        fontSize: fontSize ?? 13.sp,
        fontWeight: fontWeight,
        color: color,
        decoration: textDecoration,
        overflow: TextOverflow.ellipsis
      ),
      maxLines: 2,
    );
  }
}
