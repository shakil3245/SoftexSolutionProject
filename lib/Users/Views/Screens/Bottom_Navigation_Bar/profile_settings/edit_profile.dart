import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text(
          "Edit Profile",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 10.h,
            ),
            Center(
                child: InkWell(
              onTap: () {},
              child: Container(
                height: 75.h,
                width: 75.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.r),
                    border: Border.all(color: Colors.white, width: 2)),
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
            )),
            SizedBox(
              height: 20.h,
            ),
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
                      "Username",
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
                            hintText: "Enter your name",
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
                      "Email Address",
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
                            hintText: "Enter your email",
                            hintStyle: TextStyle(fontSize: 14.sp),
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20.w),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(28.r),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: 325,
                    ),
                    Container(
                      height: 52.h,
                      width: 335.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28.r),
                          color: AppColors.thirdColor),
                      child: Center(
                          child: Text(
                        "Save Changes",
                        style: TextStyle(color: Colors.white),
                      )),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
