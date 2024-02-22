
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_rx/src/rx_typedefs/rx_typedefs.dart';

import '../Utils/app_colors.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({
    super.key,required this.btnName, required this.onTap,
  });
  final String btnName;

  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap:onTap,
        child: Container(height: 50.h,width: double.infinity,decoration: BoxDecoration(
          color: AppColors.thirdColor,
          borderRadius: BorderRadius.circular(30.r),
        ),
          child:  Center(child: Text(btnName,style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),
        ),
      ),
    );
  }
}
