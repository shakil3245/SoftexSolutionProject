import 'package:ecommerchapp/Users/Views/Screens/AuthScreens/Login_and_Registration/login_and_registration_Screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

import '../Utils/app_colors.dart';

class LetsExploreScreen extends StatefulWidget {
  const LetsExploreScreen({Key? key}) : super(key: key);

  @override
  State<LetsExploreScreen> createState() => _LetsExploreScreenState();
}

class _LetsExploreScreenState extends State<LetsExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          children: [
            SizedBox(
              height: 230.h,
            ),
            Text(
              "E-Shop",
              style: GoogleFonts.spaceGrotesk(
                  color: AppColors.whiteColor,
                  fontSize: 48.sp,
                  fontWeight: FontWeight.w500
              )
            ),
            SizedBox(
              height: 25.sp,
            ),
            Text(
              "Explore the new \n world of Ecommerce",
              textAlign: TextAlign.center,
              style: GoogleFonts.spaceGrotesk(
                  fontSize: 30.sp,
                  color: AppColors.whiteColor,
                  fontWeight: FontWeight.w700),
              ),
            SizedBox(
              height: 290.h,
            ),
            InkWell(
              onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: LoginScreenAndRegistration()));
              },
              child: Container(
                height: 46.h,
                width: 256.w,
                decoration:  BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.all(Radius.circular(20.r))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text("Let's Explore",style: GoogleFonts.spaceGrotesk(
                      fontSize: 17.sp,fontWeight: FontWeight.w700,
                  ),),
                  SizedBox(width: 30.w,),
                  Lottie.asset('assets/lotties/Animation - 1705036152246.json',width: 40.w),
                ],),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
