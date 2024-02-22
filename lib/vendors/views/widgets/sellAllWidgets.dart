
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SeeAllWidgets extends StatelessWidget {
  const SeeAllWidgets({
    super.key, required this.categoryName, required this.onTap,
  });
  final String categoryName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(categoryName,style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),),
        InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Text("Sell All",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(width: 15.w,),
              Icon(Icons.arrow_forward,color: Colors.white,size: 18.sp,)
            ],
          ),
        )
      ],);
  }
}
