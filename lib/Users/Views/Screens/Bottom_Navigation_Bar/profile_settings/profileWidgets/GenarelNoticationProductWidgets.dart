import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GenarelNotificationProductCardWidgets extends StatelessWidget {
  const GenarelNotificationProductCardWidgets({
    super.key, required this.title, required this.price, required this.colorName, required this.productSize, required this.productImages,
  });

  final String title, price,colorName,productSize,productImages;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 340.w,
      height: 109.h,
      child: Row(
        children: [
          Stack(children: [
            Container(height: 109.h,width: 129.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r),color: Colors.white),
              child: Padding(
                padding:  EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network(productImages,fit: BoxFit.cover,),),
              ),),
          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),

                Text("\$${price}",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                Row(children: [
                  Container(
                    child: Center(child: Text(colorName,)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6.r)),height: 25.h,width: 54.w,),
                  SizedBox(width: 8.w,),
                  Container(
                    height: 25.h,width: 50.w,
                    child: Center(child: Text(productSize,)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6.r)),),

                ],)
              ],),
          ),
        ],
      ),
    );
  }
}