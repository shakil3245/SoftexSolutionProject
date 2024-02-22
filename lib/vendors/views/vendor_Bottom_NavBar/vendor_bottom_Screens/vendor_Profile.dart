import 'package:ecommerchapp/Users/Views/Screens/AuthScreens/Login_and_Registration/login_and_registration_Screen.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/vendor_Profile_Screens/rateAndReview.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/vendor_Profile_Screens/vendorPassowrdReset.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/vendor_Profile_Screens/vendorProfileEdit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../Users/Views/Utils/app_colors.dart';
import '../../../../Users/Views/Widgets/profileOptionDataWidgets.dart';

class VendorProfile extends StatefulWidget {
  const VendorProfile({Key? key}) : super(key: key);

  @override
  State<VendorProfile> createState() => _VendorProfileState();
}

class _VendorProfileState extends State<VendorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        title:  Text("Profile",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,

      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15.h,),
            Row(children: [
              ClipOval(
                child: Image.network(
                  'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=2885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  width: 75.w,
                  height: 75.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(width: 15.w,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Shakil Ahmed",style: TextStyle(fontSize: 16.sp,color: Colors.white),),
                  Text("ShakilAhmed@softexsolution.com",style: TextStyle(fontSize: 14.sp,color: Colors.white.withOpacity(0.5)),),

                ],)
            ],),
            SizedBox(height: 15.sp),
            Text("Account",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 25.h,),
            profileOptionsWidgets(title: 'Profile', icon: Icons.person, onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: VendorProfileEdit()));
            },),
            SizedBox(height: 25.h,),
            profileOptionsWidgets(title: 'Password', icon: Icons.lock, onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: VendorPasswordReset()));

            },),
            // SizedBox(height: 25.h,),
            // profileOptionsWidgets(title: 'Notifications', icon: Icons.notification_important, onTap: () {
            //
            // },),
            SizedBox(height: 25.h,),
            profileOptionsWidgets(title: 'Rate & Review', icon: Icons.star, onTap: () {
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: RateAndReview()));
            },),
            SizedBox(height: 25.h,),
            profileOptionsWidgets(title: 'Help', icon: Icons.help, onTap: () {

            },),

            Spacer(),
            Center(child: InkWell(
                onTap: (){
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreenAndRegistration()));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.logout,color: Colors.white,),
                    SizedBox(width: 6.w,),
                    Text("Log Out",style: TextStyle(fontSize: 16.sp,color: Colors.white),),
                  ],
                )))
          ],),
      ),
    );
  }
}
