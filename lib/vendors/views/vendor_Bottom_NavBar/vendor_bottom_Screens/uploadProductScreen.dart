
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/upload_Tab_Bar/GenarelTabBar.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/upload_Tab_Bar/image_Upload.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Users/Views/Utils/app_colors.dart';


class UploadProduct extends StatefulWidget {
  const UploadProduct({Key? key}) : super(key: key);

  @override
  State<UploadProduct> createState() => _UploadProductState();
}

class _UploadProductState extends State<UploadProduct> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child: Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        title:  Text("Upload",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,
        bottom: TabBar(
          tabs: [
            Tab(child: Text("Genarel",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
            ),
            Tab(child: Text("Images",style: TextStyle(color: Colors.white,fontSize: 18.sp),),
            ),
          ],
        ),

      ),
      body: TabBarView(children: [
        GenarelTabBar(),
        ImageUploader(),
      ],),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Container(height: 45.h,width: 335.w,decoration: BoxDecoration(color: AppColors.btnColor,borderRadius: BorderRadius.circular(15.r)),child: Center(child: Text("Upload",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: Colors.white),)),),
      ),
    ),);
  }
}
