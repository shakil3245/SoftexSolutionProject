
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../Screens/inners_Screens/Show_category_All_Products.dart';
import '../Utils/app_colors.dart';

class CategoryProductGallaryWidgets extends StatelessWidget {
  const CategoryProductGallaryWidgets({
    super.key, required this.image, required this.GategoryName, required this.ProductLength,
  });
  final String image, GategoryName, ProductLength;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ShowCategoryAllProducts()));
        // Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: ShowCategoryAllProducts()));
      },
      child: Container(
          height: 214.h,width: 170.w,
          decoration: BoxDecoration(
              color: AppColors.whiteColor,
              borderRadius: BorderRadius.circular(10.r)),
          child:Column(children: [
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 7.w,vertical: 8.h),
              child: GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                    crossAxisSpacing: 5,mainAxisSpacing: 5
                ),
                itemBuilder: (context, index) {
                  return  SizedBox(height:75.h ,width: 75.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10.r),
                      child: Image.network(image,fit: BoxFit.fill,),),
                  );
                },itemCount: 4,),
            ),
            Padding(
              padding:  EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(GategoryName,style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold),),
                  Container(height: 26.h,decoration: BoxDecoration(color: AppColors.thirdColor,borderRadius: BorderRadius.circular(8.r)),child: Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 12.w,vertical: 5.h),
                    child: Center(child: Text(ProductLength,style: TextStyle(fontSize: 13.sp,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ),)
                ],),
            ),

          ],)
      ),
    );
  }
}
