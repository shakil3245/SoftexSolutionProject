import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../Controller/addToCartController.dart';
import '../../../Utils/app_colors.dart';
import '../../inners_Screens/payment_Screen.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  final CartController cartController = Get.put(CartController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete,
                color: Colors.white,
              ))
        ],
        title: Text(
          "Shopping Cart",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  height: 87.h,
                  width: 326.w,
                  child: Row(
                    children: [
                      Container(
                        height: 87.h,
                        width: 87.w,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.r),
                          child: Image.network(
                            "https://www.standardtextile.com/wp-content/uploads/2023/03/Microfiber-All-Purpose-Cleaning-Cloth-01.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lorem Ipsam",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.sp,
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              "USD \$270",
                              style: TextStyle(
                                  fontSize: 14.sp, color: Colors.white),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  child: Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Center(child: Icon(Icons.remove)),
                                  ),
                                  onTap: () {
                                    cartController.decrement();
                                    setState(() {

                                    });
                                  },
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  child: Text(
                                    "${cartController.quantity.value}",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                InkWell(
                                  child: Container(
                                    height: 30.h,
                                    width: 30.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Center(child: Icon(Icons.add)),
                                  ),
                                  onTap: () {
                                    cartController.increment();
                                    setState(() {

                                    });
                                  },
                                ),
                                SizedBox(
                                  width: 90.w,
                                ),
                                Icon(
                                  Icons.delete,
                                  color: Colors.white.withOpacity(0.5),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Container(
            height: 100,
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      "Total 2 Item",
                      style: TextStyle(fontSize: 12.sp, color: Colors.white),
                    ),
                    Spacer(),
                    Text("USD \$255",
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.bottomToTop,
                            child: PaymentScreen()));
                  },
                  child: Container(
                    height: 50.h,
                    width: 326.w,
                    decoration: BoxDecoration(
                        color: AppColors.btnColor,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                        child: Text(
                      "Proceed to Checkout",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
