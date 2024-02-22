import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Users/Views/Utils/app_colors.dart';


class VendorPasswordReset extends StatefulWidget {
  const VendorPasswordReset({Key? key}) : super(key: key);

  @override
  State<VendorPasswordReset> createState() => _VendorPasswordResetState();
}

class _VendorPasswordResetState extends State<VendorPasswordReset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 18.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        title: Text("Reset Password",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
      ),
      body: Column(children: [
        Container(
          width: 375.w,
          height: 630.h,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.r),
                  topRight: Radius.circular(20.r))),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Rest Passowrd",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  height: 52.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter your password",
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintStyle: TextStyle(fontSize: 14.sp),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )),
                  ),
                ),
                SizedBox(
                  height: 12.h,
                ),
                Text(
                  "Confirm Password",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 14.sp),
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  height: 52.h,
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Confirm Passowrd",
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        hintStyle: TextStyle(fontSize: 14.sp),
                        contentPadding:
                        EdgeInsets.symmetric(horizontal: 20.w),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )),
                  ),
                ),
                SizedBox(height: 50.h,),
                Container(
                  height: 52.h,
                  width: 335.w,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(28.r),
                      color: AppColors.thirdColor),
                  child: Center(
                      child: Text(
                        "Save ",
                        style: TextStyle(color: Colors.white),
                      )),
                ),
              ],
            ),
          ),
        )
      ],),
    );
  }
}
