import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Users/Views/Utils/app_colors.dart';


class GenarelTabBar extends StatefulWidget {
  const GenarelTabBar({Key? key}) : super(key: key);

  @override
  State<GenarelTabBar> createState() => _GenarelTabBarState();
}

class _GenarelTabBarState extends State<GenarelTabBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height:10.h),
                Text("Product name",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Product Name",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Category",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Category Name",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Description",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                TextFormField(
                  controller: TextEditingController(),
                  maxLines: 5,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    hintText: "Enter Description Name",
                    contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                    hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp),
                  ),),
                SizedBox(height: 10.h,),

                Text("Price",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Product Price",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Size",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Product Size",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Color",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter  Color",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Quantity",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Quantity ",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Gendor",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Gendor ",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),
                SizedBox(height: 10.h,),

                Text("Add to Sale",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w400,color: Colors.white),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        hintText: "Enter Yes/No ",
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
                        hintStyle: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 12.sp)
                    ),),
                ),


              ],),
          ),
        ),),
    );
  }
}
