import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../Users/Views/Utils/app_colors.dart';
import '../../../widgets/sellAllWidgets.dart';

class RateAndReview extends StatefulWidget {
  const RateAndReview({Key? key}) : super(key: key);

  @override
  State<RateAndReview> createState() => _RateAndReviewState();
}

class _RateAndReviewState extends State<RateAndReview> {
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
        "Rate and Review",
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    )
      ,body: Padding(
        padding:  EdgeInsets.symmetric(horizontal:20.w),
        child: Column(children: [
          SizedBox(height: 10.h,),
        SeeAllWidgets(categoryName: 'Recent Review & Rating', onTap: () {  },),
          SizedBox(height: 15.h,),
          Container(
            width: 340.w,
            height: 109.h,
            child: Row(
              children: [
                Container(height: 109.h,width: 129.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r),color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network("https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=",fit: BoxFit.cover,),),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Lorem ipsum dolor sit amet.",maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),

                      Text("\$17,00",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 20,
                        width: 100,
                        child: ListView.builder(
                          itemBuilder: (context,index){
                            return Icon(Icons.star,color: Colors.orange,);
                          },itemCount: 5,scrollDirection: Axis.horizontal,),
                      ),

                    ],),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          SeeAllWidgets(categoryName: 'Old Review & Rating', onTap: () {  },),
          SizedBox(height: 15.h,),
          Container(
            width: 340.w,
            height: 109.h,
            child: Row(
              children: [
                Container(height: 109.h,width: 129.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r),color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network("https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=",fit: BoxFit.cover,),),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Lorem ipsum dolor sit amet.",maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),

                      Text("\$17,00",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 20,
                        width: 100,
                        child: ListView.builder(
                          itemBuilder: (context,index){
                            return Icon(Icons.star,color: Colors.orange,);
                          },itemCount: 5,scrollDirection: Axis.horizontal,),
                      ),

                    ],),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h,),
          SeeAllWidgets(categoryName: 'Waiting Review & Rating', onTap: () {  },),
          SizedBox(height: 15.h,),
          Container(
            width: 340.w,
            height: 109.h,
            child: Row(
              children: [
                Container(height: 109.h,width: 129.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r),color: Colors.white),
                  child: Padding(
                    padding:  EdgeInsets.all(5),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.r),
                      child: Image.network("https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=",fit: BoxFit.cover,),),
                  ),),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Lorem ipsum dolor sit amet.",maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),

                      Text("\$17,00",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 20,
                        width: 100,
                        child: ListView.builder(
                          itemBuilder: (context,index){
                            return Icon(Icons.star,color: Colors.orange,);
                          },itemCount: 5,scrollDirection: Axis.horizontal,),
                      ),

                    ],),
                ),
              ],
            ),
          ),

            ],),
      ),);
  }
}
