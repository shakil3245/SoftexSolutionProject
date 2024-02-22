import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/profile_settings/wishList_recenty_viewed_screen.dart';
import 'package:ecommerchapp/Users/Views/Widgets/categoryAndSeeAllWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Utils/app_colors.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
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
        "Wishlist",
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Text(
            "Recently Added",
            style: TextStyle(
                fontSize: 21.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
          SizedBox(height: 10.h,),
          Container(
            height: 60.h,
            child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 8.w),
                    child: InkWell(
                        onTap: () {},
                        child: Container(
                          height: 60.h,
                          width: 60.w,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30.r)),
                          child: Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(30.r),
                              child: Image.network(
                                "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )),
                  );
                }),
          ),
            SizedBox(height: 10.h,),
            Container(height: 500.h,child: ListView.builder(
              itemCount: 10,
                itemBuilder: (context,index){
              return Padding(
                padding:  EdgeInsets.only(top: 10.h),
                child: Container(
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
                              child: Image.network("https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=",fit: BoxFit.cover,),),
                          ),),
                        Positioned(
                            bottom: 12,
                            left: 12,
                            child:  Container(height: 35.h,width: 35.w,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),child:Icon(Icons.delete,color: Colors.red,size: 18,),)),
                      ],),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Lorem ipsum dolor sit amet.",maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),

                            Text("\$17,00",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                            Row(children: [
                              Container(
                                child: Center(child: Text("Pink",)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6.r)),height: 25.h,width: 54.w,),
                              SizedBox(width: 8.w,),
                              Container(
                                height: 25.h,width: 50.w,
                                child: Center(child: Text("M",)),decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(6.r)),),
                              SizedBox(width: 55,),
                              Icon(Icons.shopping_cart,color: Colors.white,)
                            ],)
                          ],),
                      ),
                    ],
                  ),
                ),
              );
            }),),
            SizedBox(height: 10.h,),
            CategoryAndSeeAllWidgets(categoryName: "Recently  Viewed", onTap: (){

              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: WishlistRecentlyViewdScreen()));
            }),
        ],),
      ),
    );
  }
}
