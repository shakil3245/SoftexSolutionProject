import 'package:ecommerchapp/Users/Views/Widgets/categoryAndSeeAllWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Users/Views/Utils/app_colors.dart';

class OrdersToVendor extends StatefulWidget {
  const OrdersToVendor({Key? key}) : super(key: key);

  @override
  State<OrdersToVendor> createState() => _OrdersToVendorState();
}

class _OrdersToVendorState extends State<OrdersToVendor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Orders",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              CategoryAndSeeAllWidgets(categoryName: "Up coming deliveries", onTap: (){}),
              SizedBox(height: 12.h,),
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
              SizedBox(height: 15.h,),
              Container(
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

                          ],)
                        ],),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Being processed items ", onTap: (){}),
              SizedBox(height: 12.h,),
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
              SizedBox(height: 15.h,),
              Container(
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

                          ],)
                        ],),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Recently delivered ", onTap: (){}),
              SizedBox(height: 15.h,),
              Container(
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

                          ],)
                        ],),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Delivered  Items", onTap: (){}),
              SizedBox(height: 12.h,),
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
              SizedBox(height: 15.h,),
              Container(
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

                          ],)
                        ],),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Review & Rating", onTap: (){}),
              SizedBox(height: 15.h,),
              Container(
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

              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Waiting for  Rating", onTap: (){}),
              SizedBox(height: 15.h,),
              Container(
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
                          ],)
                        ],),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h,),


            ],),
        ),
      ),
    );
  }
}
