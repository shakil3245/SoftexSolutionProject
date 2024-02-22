import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../Users/Views/Utils/app_colors.dart';
import '../../../../../Users/Views/Widgets/textFormfiledWidgets.dart';

class VendorProfileEdit extends StatefulWidget {
  const VendorProfileEdit({Key? key}) : super(key: key);

  @override
  State<VendorProfileEdit> createState() => _VendorProfileEditState();
}

class _VendorProfileEditState extends State<VendorProfileEdit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar:AppBar(
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
        "Edit Profile",
        style: TextStyle(
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    ), body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(children: [
        SizedBox(height: 15.h,),
        Center(
            child: Container(height: 83.h,width: 83.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(60.r),color: Colors.white),child: Padding(
              padding: const EdgeInsets.all(3),
              child: Stack(
                children: [
                  Center(
                    child: ClipOval(
                      child: Image.network(
                        'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=2885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                        width: 75.w,
                        height: 75.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                      right: 0,
                      child: Container(height: 20.h,width: 20.w,decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(50.r)),child: Center(child: Icon(Icons.edit,color: AppColors.primaryColor,size: 15,)),))
                ],
              ),
            ),)
        ),
        SizedBox(height: 20.h,),
        Container(
          decoration: BoxDecoration(color: AppColors.whiteColor,borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r))),
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w,),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 15.h,),
                Text("Your Account",style: GoogleFonts.spaceGrotesk(
                    fontSize: 16.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor
                ),),
                SizedBox(height: 5.h,),
                Text("Make sure your account updated",style: GoogleFonts.spaceGrotesk(fontSize: 12.sp,color: Colors.black.withOpacity(0.5)),),
                SizedBox(height: 20.h,),


                Text("Company Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "Current company name",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.5)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )
                    ),),
                ),
                SizedBox(height: 12.h,),
                Text("Contact Person Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "Your contact person name",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.5)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )
                    ),),
                ),
                SizedBox(height: 12.h,),
                Text("Email Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "Current  email",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.5)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )
                    ),),
                ),

                SizedBox(height: 12.h,),
                Text("Business Type",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "Business type",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.5)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )
                    ),),
                ),
                SizedBox(height: 12.h,),
                Text("Phone Number",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "Running phone number",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.5)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )
                    ),),
                ),
                SizedBox(height: 12.h,),
                Text("Country Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600,color: AppColors.primaryColor),),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 55.h,
                  child: TextFormField(
                    controller: TextEditingController(),
                    decoration: InputDecoration(
                        hintText: "Country address",
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: AppColors.primaryColor),
                          borderRadius: BorderRadius.circular(28.r),
                        ),
                        hintStyle: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.black.withOpacity(0.5)
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28.r),
                        )
                    ),),
                ),
                SizedBox(height: 30.h,),
                InkWell(
                  onTap: (){

                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Container(height: 50.h,width: double.infinity,decoration: BoxDecoration(
                      color: AppColors.thirdColor,
                      borderRadius: BorderRadius.circular(30.r),

                    ),
                      child:  Center(child: Text("Upadate  Profile",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),
                    ),
                  ),
                ),

                SizedBox(height: 20.h,),


              ],
            ),
          ),
        ),

      ],),
    ),);
  }
}
