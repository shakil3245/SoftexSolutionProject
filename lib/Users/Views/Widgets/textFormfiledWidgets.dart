
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';

class TextFormfiledWidgets extends StatelessWidget {
  const TextFormfiledWidgets({
    super.key, required this.hintTexts,
  });
  final String hintTexts;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.h,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintTexts,

          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.primaryColor),
            borderRadius: BorderRadius.circular(28.r),
          ),
          hintStyle: TextStyle(
              fontSize: 14.sp
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28.r),

          )
      ),),
    );
  }
}
