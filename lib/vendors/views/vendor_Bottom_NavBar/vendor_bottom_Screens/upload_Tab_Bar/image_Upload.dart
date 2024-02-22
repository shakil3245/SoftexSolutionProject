import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageUploader extends StatefulWidget {
  const ImageUploader({Key? key}) : super(key: key);

  @override
  State<ImageUploader> createState() => _ImageUploaderState();
}

class _ImageUploaderState extends State<ImageUploader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          children: [
            // Text("Select Images",style: TextStyle(color: Colors.white,fontSize: 16.sp),)
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 30,vertical: 20),
              child: Icon(Icons.add,color: Colors.white,size: 25,),
            )
          ],
        ),
      ),
    );
  }
}
