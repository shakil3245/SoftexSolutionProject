
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Utils/app_colors.dart';

class MostPopularWidgets extends StatelessWidget {
  const MostPopularWidgets({
    super.key, required this.popularCount, required this.productLevel, required this.image,
  });
  final String popularCount, productLevel,image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: 104.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            height: 120.h,
            width: 97.w,
            child: Padding(
              padding:
              EdgeInsets.symmetric(vertical: 6.h),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.network(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 8.w, vertical: 5.h),
            child: Row(
              children: [
                Row(
                  children: [
                    Text(
                      popularCount,
                      style: TextStyle(
                          fontSize: 15.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 3.w,),
                    Icon(
                      Icons.favorite,
                      size: 16.sp,color: AppColors.primaryColor,
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  productLevel,
                  style: TextStyle(fontSize: 13.sp),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
