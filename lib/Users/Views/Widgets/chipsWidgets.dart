import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';

class ChipsWidgets extends StatelessWidget {
  const ChipsWidgets({
    super.key, required this.chipName, required this.onTap
  });

  final String chipName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(right: 6.w),
      child: InkWell(
        onTap: onTap,
        child: Container(height: 40.h,width: 105.w,decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(9)
        ),child: Center(child: Text(chipName,style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.w500,color:Colors.black),)),),
      ),
    );
  }
}