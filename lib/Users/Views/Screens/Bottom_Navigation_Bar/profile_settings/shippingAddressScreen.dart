import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/app_colors.dart';

class ShippingAddressScreen extends StatefulWidget {
  const ShippingAddressScreen({Key? key}) : super(key: key);

  @override
  State<ShippingAddressScreen> createState() => _ShippingAddressScreenState();
}

class _ShippingAddressScreenState extends State<ShippingAddressScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Shipping Address",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Country",
              style: TextStyle(fontSize: 13.sp, color: Colors.white),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 40.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Bangladesh",
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Address",
              style: TextStyle(fontSize: 13.sp, color: Colors.white),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 40.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Dhaka",
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Town / City",
              style: TextStyle(fontSize: 13.sp, color: Colors.white),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 40.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Ashulia",
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Postcode",
              style: TextStyle(fontSize: 13.sp, color: Colors.white),
            ),
            SizedBox(
              height: 5.h,
            ),
            SizedBox(
              height: 40.h,
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Postcode",
                  fillColor: Colors.white,
                  filled: true,
                  hintStyle: TextStyle(
                    color: AppColors.primaryColor,
                    fontSize: 14.sp,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  contentPadding: EdgeInsets.symmetric(horizontal: 15.w),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
        child: Container(
          height: 45.h,
          decoration: BoxDecoration(color: AppColors.thirdColor,borderRadius: BorderRadius.circular(10.r)),
          child: Center(child: Text("Save Changes",style: TextStyle(fontSize: 16.sp,color: Colors.white),)),
        ),
      ),
    );
  }
}
