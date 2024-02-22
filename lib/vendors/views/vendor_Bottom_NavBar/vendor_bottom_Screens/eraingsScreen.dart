import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Users/Views/Utils/app_colors.dart';

class Earnings extends StatefulWidget {
  const Earnings({Key? key}) : super(key: key);

  @override
  State<Earnings> createState() => _EarningsState();
}

class _EarningsState extends State<Earnings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar:AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        title:  Text("Earnings",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(children: [
        SizedBox(height: 45.h,),
          Row(
            children: [
              Container(
                width: 160.w,
                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    Text("Number of orders",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 3.h,),
                    Text("12",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),)
                  ],),
                ),
              ),
              Spacer(),
              Container(
                width: 160.w,
                decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Revenue in this week",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 3.h,),
                      Text("\$ 4543,87",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.h,),
          Container(
            width: 334.w,
            decoration: BoxDecoration(border: Border.all(color: Colors.white),borderRadius: BorderRadius.circular(10.r)),
            child: Padding(
              padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 20.h),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Product sales",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 3.h,),
                      Text("\$ 4543,87",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),)
                    ],),
                  SizedBox(width: 10.w,),
                  Container(
                   width: 85.w,

                    decoration: BoxDecoration(color: AppColors.offGreenColor,borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Row(children: [
                          Icon(Icons.arrow_upward,color: Colors.greenAccent,),
                          SizedBox(width: 5.h,),
                          Text("42%",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],),
                        Text("Per week",style: TextStyle(fontSize: 12.sp,color: Colors.grey),)
                      ],),
                    ),
                  ),
                  SizedBox(width: 10.w,),
                  Container(
                    width: 85.w,

                    decoration: BoxDecoration(color: AppColors.offRedColor,borderRadius: BorderRadius.circular(15.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(children: [
                        Row(children: [
                          Icon(Icons.arrow_downward_outlined,color: Colors.red,),
                          SizedBox(width: 5.h,),
                          Text("12%",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.bold,color: Colors.white),)
                        ],),
                        Text("Overall",style: TextStyle(fontSize: 12.sp,color: Colors.grey),)
                      ],),
                    ),
                  )
                ],
              ),
            ),
          ),

        ],),
      ),
    );
  }
}
