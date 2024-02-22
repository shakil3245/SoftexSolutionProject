import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/profile_settings/wishList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Utils/app_colors.dart';
import '../../../Widgets/profileOptionDataWidgets.dart';
import '../../AuthScreens/Login_and_Registration/login_and_registration_Screen.dart';
import '../profile_settings/edit_profile.dart';
import '../profile_settings/notificationScreen.dart';
import '../profile_settings/orderScreen.dart';
import '../profile_settings/passwordRest.dart';
import '../profile_settings/shippingAddressScreen.dart';
import 'cart_Screen.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: Container(),
        backgroundColor: AppColors.primaryColor,
        title:  Text("Settings",style: TextStyle(fontSize: 18.sp,fontWeight: FontWeight.bold,color: Colors.white),),
        centerTitle: true,

      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
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
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const EditProfileScreen()));
              },),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Password', icon: Icons.lock, onTap: () {

                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const PassowrdResetScreen()));
              },),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Notifications', icon: Icons.notification_important, onTap: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const NotificationScreen()));
              },),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Wishlist', icon: Icons.favorite_border, onTap: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const WishListScreen()));
              },),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Order', icon: Icons.card_travel, onTap: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const OrderScreen()));
                 },),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Shipping Address ', icon: Icons.location_on, onTap: () {

                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const ShippingAddressScreen()));
              },),
              SizedBox(height: 25.h,),
              // profileOptionsWidgets(title: 'Payment methods', icon: Icons.monetization_on, onTap: () {  },),
              // SizedBox(height: 20.h,),

              Text("More",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Rate & Review', icon: Icons.star_rate, onTap: () {  },),
              SizedBox(height: 25.h,),
              profileOptionsWidgets(title: 'Help', icon: Icons.help, onTap: () {  },),
              SizedBox(height:40.h ,),

              Center(child: InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.rightToLeft, child: const LoginScreenAndRegistration()));
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
      ),
    );
  }
}


