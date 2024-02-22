import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/profile_settings/profileWidgets/GenarelNoticationProductWidgets.dart';
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/profile_settings/profileWidgets/notificationCardWigets.dart';
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/profile_settings/profileWidgets/watingForActionWidgets.dart';
import 'package:ecommerchapp/Users/Views/Widgets/categoryAndSeeAllWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Utils/app_colors.dart';
import 'notificationSeeAllScreen/beingProcessedItemScreen.dart';
import 'notificationSeeAllScreen/orderItemsScreen.dart';
import 'notificationSeeAllScreen/receivedItemScreen.dart';
import 'notificationSeeAllScreen/waitingForActionScreen.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);
  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}
class _NotificationScreenState extends State<NotificationScreen> {
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
        "Notifications",
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
              CategoryAndSeeAllWidgets(categoryName: "Waiting for  Action", onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child:  WaitingForAction()));
              }),
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
              NotificationProductCardWidgets(title: 'Attractive dress for girls', price: '17,00', colorName: 'Red', productSize: 'XL', productImages: 'https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=',),
              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Ordered Items", onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child:  OrderItemScreen()));

              }),
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
              GenarelNotificationProductCardWidgets(title: 'There will ordered product title', price: '18,00', colorName: 'Green', productSize: 'M', productImages: 'https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=',),
              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Being Processed Items", onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child:  BeingProcessedItemScreen()));
              }),
              SizedBox(height: 15.h,),
              GenarelNotificationProductCardWidgets(title: 'There will ordered product title', price: '18,00', colorName: 'Green', productSize: 'M', productImages: 'https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=',),


              SizedBox(height: 15.h,),
              CategoryAndSeeAllWidgets(categoryName: "Received  Items", onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child:  ReceivedItemScreen()));
              }),
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
              GenarelNotificationProductCardWidgets(title: 'There will ordered product title', price: '18,00', colorName: 'Green', productSize: 'M', productImages: 'https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=',),
              SizedBox(height: 15.h,),
              // SizedBox(height: 15.h,),
              // CategoryAndSeeAllWidgets(categoryName: "Review & Rating", onTap: (){}),
              // SizedBox(height: 15.h,),
              // Container(
              //   width: 340.w,
              //   height: 109.h,
              //   child: Row(
              //     children: [
              //       Stack(children: [
              //         Container(height: 109.h,width: 129.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r),color: Colors.white),
              //           child: Padding(
              //             padding:  EdgeInsets.all(5),
              //             child: ClipRRect(
              //               borderRadius: BorderRadius.circular(8.r),
              //               child: Image.network("https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=",fit: BoxFit.cover,),),
              //           ),),
              //         Positioned(
              //             bottom: 12,
              //             left: 12,
              //             child:  Container(height: 35.h,width: 35.w,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),child:Icon(Icons.delete,color: Colors.red,size: 18,),)),
              //       ],),
              //       Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Column(
              //           crossAxisAlignment: CrossAxisAlignment.start,
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             Text("Lorem ipsum dolor sit amet.",maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),
              //
              //             Text("\$17,00",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
              //             SizedBox(
              //               height: 20,
              //               width: 100,
              //               child: ListView.builder(
              //                   itemBuilder: (context,index){
              //                 return Icon(Icons.star,color: Colors.orange,);
              //               },itemCount: 5,scrollDirection: Axis.horizontal,),
              //             ),
              //
              //           ],),
              //       ),
              //     ],
              //   ),
              // ),


              // CategoryAndSeeAllWidgets(categoryName: "Waiting for  Rating", onTap: (){}),
              // SizedBox(height: 15.h,),
              //  WaitingForRatingWidgets(rating: 0, title: "Product title will be there", price: "20,33",),
              // SizedBox(height: 20.h,),


          ],),
        ),
      ),
    );
  }
}
