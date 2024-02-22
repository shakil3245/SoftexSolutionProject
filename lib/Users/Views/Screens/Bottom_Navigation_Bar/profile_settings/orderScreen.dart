import 'package:ecommerchapp/Users/Views/Widgets/categoryAndSeeAllWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/app_colors.dart';
import '../../../Widgets/buttonWidgets.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
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
            "Orders",
            style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                height: 89.h,
                width: 335.w,
                child: Row(
                  children: [
                    Container(
                      height: 89.h,
                      width: 89,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4QaRqKWxfrGdQ9r5U5mWg-RWItNxzmphX-Q&usqp=CAU"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Order #92287157',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 42.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 5.h),
                                    child: Text(
                                      '3 items',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "Standard Delivery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                'Packed',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 80.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.blueColor,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25.w, vertical: 5.h),
                                    child: Text(
                                      'Track',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                height: 89.h,
                width: 335.w,
                child: Row(
                  children: [
                    Container(
                      height: 89.h,
                      width: 89,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4QaRqKWxfrGdQ9r5U5mWg-RWItNxzmphX-Q&usqp=CAU"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Order #92287157',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 42.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 5.h),
                                    child: Text(
                                      '4 items',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "Standard Delivery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                'Shipped',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 75.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: AppColors.blueColor,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 25.w, vertical: 5.h),
                                    child: Text(
                                      'Track',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                height: 89.h,
                width: 335.w,
                child: Row(
                  children: [
                    Container(
                      height: 89.h,
                      width: 89,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4QaRqKWxfrGdQ9r5U5mWg-RWItNxzmphX-Q&usqp=CAU"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Order #92287157',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 42.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 5.h),
                                    child: Text(
                                      '4 items',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "Standard Delivery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                'Delivered',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 65.w,
                              ),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      return Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20.w, vertical: 10.h),
                                        child: Column(
                                          // mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 20.h),
                                              child: Text(
                                                "Review",
                                                style: TextStyle(
                                                    fontSize: 22.sp,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40.h,
                                                  width: 40.w,
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30.r),
                                                    child: Image.network(
                                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgdZpEDslKnjBmPC6dlF6pf9Q2m1o5aMdHwg&s",
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10.w,
                                                ),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Lorem ipsum dolor sit amet consectetur.",
                                                      style: TextStyle(
                                                          fontSize: 12.sp,
                                                          color: Colors.black
                                                              .withOpacity(
                                                                  0.8)),
                                                    ),
                                                    Text("Order #92287157",
                                                        style: TextStyle(
                                                            fontSize: 14.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                  ],
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                              height: 10.h,
                                            ),
                                            RatingBar.builder(
                                              initialRating: 3,
                                              minRating: 1,
                                              direction: Axis.horizontal,
                                              allowHalfRating: true,
                                              itemCount: 5,
                                              itemPadding: EdgeInsets.symmetric(
                                                  horizontal: 4.0),
                                              itemBuilder: (context, _) => Icon(
                                                Icons.star,
                                                color: Colors.amber,
                                              ),
                                              onRatingUpdate: (rating) {
                                                print(rating);
                                              },
                                            ),
                                            SizedBox(height: 10.h,),
                                            TextFormField(
                                              decoration: InputDecoration(
                                                hintText: "Your comment..",
                                                filled: true,
                                                fillColor:
                                                    Colors.grey.withOpacity(0.2),
                                                border: OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                  borderRadius: BorderRadius.circular(10)
                                                )
                                              ),
                                              maxLines: 3,
                                            ),
                                            SizedBox(height: 40.h,),
                                            ButtonWidgets(btnName: 'Done', onTap: () {
                                              Navigator.pop(context);
                                            },),
                                          ],
                                        ),
                                      );
                                    },
                                  );
                                },
                                child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        border: Border.all(
                                            width: 2,
                                            color: AppColors.blueColor),
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w, vertical: 5.h),
                                      child: Text(
                                        'Review',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.blueColor),
                                      ),
                                    )),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Container(
                height: 89.h,
                width: 335.w,
                child: Row(
                  children: [
                    Container(
                      height: 89.h,
                      width: 89,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.r)),
                      child: Padding(
                        padding: const EdgeInsets.all(3),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4QaRqKWxfrGdQ9r5U5mWg-RWItNxzmphX-Q&usqp=CAU"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Order #92287157',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 42.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10.w, vertical: 5.h),
                                    child: Text(
                                      '4 items',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )),
                            ],
                          ),
                          Text(
                            "Express Delivery",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ),
                          Row(
                            children: [
                              Text(
                                'Delivered',
                                style: TextStyle(
                                    fontSize: 18.sp,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 65.w,
                              ),
                              Container(
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      border: Border.all(
                                          width: 2, color: AppColors.blueColor),
                                      borderRadius:
                                          BorderRadius.circular(10.r)),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15.w, vertical: 5.h),
                                    child: Text(
                                      'Review',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.blueColor),
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
