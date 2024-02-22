import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Widgets/buttonWidgets.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key? key}) : super(key: key);

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  bool _isStandard = true;
  bool _isExpress = false;
//SHIPPING ADDRESS ALART DIALOG START FROM THERE
  final TextEditingController _countryController =
      TextEditingController(text: "Bangladesh");
  final TextEditingController _addressController =
      TextEditingController(text: "Manikganj sadar Bus Stand,Dhaka");
  final TextEditingController _townOrCityController =
      TextEditingController(text: "Manikganj");
  final TextEditingController _postalController =
      TextEditingController(text: "1800");

  _updateShippingAddress() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Shipping Address",
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: _countryController,
                    decoration: InputDecoration(
                        labelText: "Country", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  child: TextFormField(
                    maxLines: 2,
                    controller: _addressController,
                    decoration: InputDecoration(
                        labelText: "Address", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  child: TextFormField(
                    maxLines: 2,
                    controller: _townOrCityController,
                    decoration: InputDecoration(
                        labelText: "Town / City", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: _postalController,
                    decoration: InputDecoration(
                        labelText: "Postcode", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Save Changes",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  //CONTACT INFROMATION ALART DIALOG START FROM HERE
  final TextEditingController _phoneUpdateController =
      TextEditingController(text: "912450000");
  final TextEditingController _emailUpdateController =
      TextEditingController(text: "ShakilAhmed@softexsolution.com");

  _updateContactInformation() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Contact Information ",
              style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
            ),
            backgroundColor: Colors.white,
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50.h,
                  child: TextFormField(
                    controller: _phoneUpdateController,
                    decoration: InputDecoration(
                        labelText: "Phone", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                SizedBox(
                  child: TextFormField(
                    controller: _emailUpdateController,
                    decoration: InputDecoration(
                        labelText: "Email", border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Container(
                  height: 40.h,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                    child: Text(
                      "Save Changes",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )
              ],
            ),
          );
        });
  }

  //ADD VOUCHER
  _add_voucher() {
    return showModalBottomSheet(
      backgroundColor: AppColors.whiteColor,
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h),
                child: Text(
                  "Active Vouchers",
                  style:
                      TextStyle(fontSize: 22.sp, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 115.h,
                width: 336.w,
                decoration: BoxDecoration(
                    color: AppColors.lightOffColor,
                    borderRadius: BorderRadius.circular(10.r),
                    border:
                        Border.all( color: AppColors.primaryColor)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                  child: Column(children: [
                    Row(children: [
                      Text("Voucher",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                      Spacer(),
                      Container(decoration: BoxDecoration(color: AppColors.voucherColor,borderRadius: BorderRadius.circular(8.r)),child: Center(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Valid Until 6.20.2024",style: TextStyle(fontSize: 11.sp),),
                      )),)
                    ],),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.shop,color: AppColors.primaryColor,),
                        SizedBox(width: 6.w,),
                        Text("First Purchase",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                      ],
                    ),
                    Row(children: [
                      Text("5% off for your next order",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Container(height: 26.h,width: 79.w,decoration: BoxDecoration(color: AppColors.primaryColor,borderRadius: BorderRadius.circular(8.r)),child: Center(child: Text("Apply",style: TextStyle(color: Colors.white),)),)
                    ],)

                  ],),
                ),
              ),
              SizedBox(height: 15.h,),
              Container(
                height: 115.h,
                width: 336.w,
                decoration: BoxDecoration(
                    color: AppColors.lightOffColor,
                    borderRadius: BorderRadius.circular(10.r),
                    border:
                    Border.all( color: AppColors.primaryColor)),
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 8.w,vertical: 8.h),
                  child: Column(children: [
                    Row(children: [
                      Text("Voucher",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                      Spacer(),
                      Container(decoration: BoxDecoration(color: AppColors.voucherColor,borderRadius: BorderRadius.circular(8.r)),child: Center(child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text("Valid Until 6.20.2024",style: TextStyle(fontSize: 11.sp),),
                      )),)
                    ],),
                    Divider(),
                    Row(
                      children: [
                        Icon(Icons.card_giftcard,color: AppColors.primaryColor,),
                        SizedBox(width: 6.w,),
                        Text("Sale Items",style: TextStyle(fontSize: 17.sp,fontWeight: FontWeight.bold,color: AppColors.primaryColor),),
                      ],
                    ),
                    Row(children: [
                      Text("15% off your next purchase",style: TextStyle(fontSize: 12.sp,fontWeight: FontWeight.bold),),
                      Spacer(),
                      Container(height: 26.h,width: 79.w,decoration: BoxDecoration(color: AppColors.primaryColor,borderRadius: BorderRadius.circular(8.r)),child: Center(child: Text("Apply",style: TextStyle(color: Colors.white),)),)
                    ],)

                  ],),
                ),
              ),
              SizedBox(height: 20.h,),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "Payment",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 28.sp,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 75.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Shipping Address",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.thirdColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Text(
                            '26, Duong So 2, Thao Dien Ward, An Phu, District  2, Ho Chi Minh city ',
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 10.sp,
                                overflow: TextOverflow.ellipsis,
                                color: AppColors.thirdColor),
                          )),
                          SizedBox(
                            width: 5.w,
                          ),
                          CircleAvatar(
                            backgroundColor: AppColors.thirdColor,
                            child: IconButton(
                                onPressed: () {
                                  _updateShippingAddress();
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 75.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Contact Information",
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.thirdColor),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                              child: Column(
                            children: [
                              Text(
                                '+912450000',
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    overflow: TextOverflow.ellipsis,
                                    color: AppColors.thirdColor),
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Text(
                                'ShakilAhmed@softexsolution.com',
                                maxLines: 1,
                                style: TextStyle(
                                    fontSize: 10.sp,
                                    overflow: TextOverflow.ellipsis,
                                    color: AppColors.thirdColor),
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          )),
                          CircleAvatar(
                            backgroundColor: AppColors.thirdColor,
                            child: IconButton(
                                onPressed: () {
                                  _updateContactInformation();
                                },
                                icon: Icon(
                                  Icons.edit,
                                  color: Colors.white,
                                )),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Items",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    height: 30.h,
                    width: 30.w,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    child: Center(
                        child: Text(
                      "10",
                      style: TextStyle(
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18.sp),
                    )),
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {
                      _add_voucher();
                    },
                    child: Container(
                      height: 30.h,
                      width: 120.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(11.r),
                          border:
                              Border.all(width: 1, color: AppColors.blueColor)),
                      child: Center(
                          child: Text(
                        "Add Voucher",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                            color: Colors.white),
                      )),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: 60.h,
                                  width: 60.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
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
                                ),
                                Positioned(
                                  right: 0,
                                  child: Container(
                                    height: 22.h,
                                    width: 22.w,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(30)),
                                    child: Center(
                                        child: Text(
                                      "1",
                                      style: TextStyle(
                                          color: AppColors.primaryColor,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.sp),
                                    )),
                                  ),
                                )
                              ],
                            ),
                            Expanded(
                                child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Lorem ipsum dolor sit amet consectetur.",
                                maxLines: 2,
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    color: Colors.white,
                                    overflow: TextOverflow.ellipsis),
                              ),
                            )),
                            SizedBox(
                              width: 8.w,
                            ),
                            Text(
                              "\$17,00",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Shipping Options",
                style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: AppColors.lightOffColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: _isStandard,
                        onChanged: (val) {
                          setState(() {
                            _isStandard = val!;
                          });
                        }),
                    Text(
                      "Standard",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.thirdColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 23.h,
                      width: 76.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "5-7 days",
                        style:
                            TextStyle(fontSize: 13, color: AppColors.blueColor),
                      )),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "FREE",
                        style: TextStyle(
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 40.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: AppColors.lightOffColor,
                    borderRadius: BorderRadius.circular(10.r)),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: AppColors.primaryColor,
                        value: _isExpress,
                        onChanged: (val) {
                          setState(() {
                            _isExpress = val!;
                          });
                        }),
                    Text(
                      "Express",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          color: AppColors.thirdColor),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Container(
                      height: 23.h,
                      width: 76.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.r),
                          color: Colors.white),
                      child: Center(
                          child: Text(
                        "1-2 days",
                        style:
                            TextStyle(fontSize: 13, color: AppColors.blueColor),
                      )),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.w),
                      child: Text(
                        "\$12.00",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppColors.primaryColor),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Delivered on or before Thursday, 23 April 2024",
                style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Payment Method",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 21.sp),
                  ),
                  Spacer(),
                  CircleAvatar(
                    backgroundColor: AppColors.thirdColor,
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.edit,
                          color: Colors.white,
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 8.h,
              ),
              Container(
                height: 30.h,
                width: 73.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.r),
                    color: AppColors.lightOffColor),
                child: Center(
                    child: Text(
                  "Card",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primaryColor),
                )),
              ),
              SizedBox(
                height: 40.h,
              ),
              Row(
                children: [
                  Text(
                    "Total \$34.00",
                    style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      height: 40.h,
                      width: 128.w,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          color: AppColors.lightOffColor),
                      child: Center(
                          child: Text(
                        "Pay",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w300,
                            color: AppColors.primaryColor),
                      )),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
