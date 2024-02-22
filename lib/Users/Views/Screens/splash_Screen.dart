import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../Utils/app_colors.dart';
import 'lets_Explore_Screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () => Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: LetsExploreScreen())));
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
                color:AppColors.primaryColor,

        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Text("E-Shop",style: GoogleFonts.spaceGrotesk(
                color: Colors.white,fontSize: 48.sp,fontWeight: FontWeight.w500
            ),)),
            Center(child: CircularProgressIndicator(color: Colors.white,),)
          ],
        ),
      ),
    );
  }
}
