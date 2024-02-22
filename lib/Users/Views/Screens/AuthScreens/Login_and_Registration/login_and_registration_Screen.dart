import 'package:ecommerchapp/Users/Views/Screens/AuthScreens/Login_and_Registration/registration_otp_Screen.dart';
import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../../../../vendors/views/vendor_Auth/vendor_Login_Registration_Screen.dart';
import '../../../Widgets/buttonWidgets.dart';
import '../../../Widgets/textFormfiledWidgets.dart';
import '../../Bottom_Navigation_Bar/bottom_Nav_Bar.dart';

class LoginScreenAndRegistration extends StatefulWidget {
  const LoginScreenAndRegistration({Key? key}) : super(key: key);

  @override
  State<LoginScreenAndRegistration> createState() => _LoginScreenAndRegistrationState();
}

class _LoginScreenAndRegistrationState extends State<LoginScreenAndRegistration> {
  bool _isRegister = false;
  bool? _isCheckBox = false;
  bool? _isAcceptCondition = false;
  bool _obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 62.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Container(
                height: 190.h,
                width: 335.w,
                decoration: BoxDecoration(
                    color: AppColors.thirdColor,
                    borderRadius: BorderRadius.circular(24.r)),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                  child: Column(
                    children: [
                      Text(
                        'Hello There',
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white.withOpacity(0.6)),
                      ),
                      Text(
                        "Welcome Back",
                        style: TextStyle(
                            fontSize: 26.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 60.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: AppColors.secondaryColor,
                            borderRadius: BorderRadius.circular(30.r)),
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Row(
                            children: [
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _isRegister = false;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: _isRegister
                                            ? Colors.transparent
                                            : AppColors.whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    height: 52.h,
                                    child: Center(
                                        child: Text(
                                      "Login",
                                      style: GoogleFonts.spaceGrotesk(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: _isRegister
                                              ? Colors.white.withOpacity(0.5)
                                              : Colors.black),
                                    )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    setState(() {
                                      _isRegister = true;
                                    });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: _isRegister
                                            ? AppColors.whiteColor
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    height: 52.h,
                                    child: Center(
                                        child: Text(
                                      "Register",
                                      style: GoogleFonts.spaceGrotesk(
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.bold,
                                        color: _isRegister
                                            ? Colors.black
                                            : Colors.white.withOpacity(0.5),
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            if(!_isRegister)
            LoginFormMethod(),
            if(_isRegister)
            RegistrationFiledMethod(),
          ],
        ),
      ),
    );
  }

  Container RegistrationFiledMethod() {
    return Container(

        width: 375.w,
        decoration:  BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(10.r),
                bottomRight: Radius.circular(10.r),
                topLeft: Radius.circular(20.r),
                topRight: Radius.circular(20.r))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create your Account",style: GoogleFonts.spaceGrotesk(
                  fontSize: 16.sp,fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 5.h,),
              Text("Make sure your account keep secure",style: GoogleFonts.spaceGrotesk(fontSize: 12.sp,color: Colors.black.withOpacity(0.5)),),
              SizedBox(height: 20.h,),
               Text("Username",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 10.h,),
              TextFormfiledWidgets(hintTexts: "Enter your name",),
              SizedBox(height: 20.h,),
               Text("Email Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 10.h,),
              TextFormfiledWidgets(hintTexts: "Enter your email",),
              SizedBox(height: 12.h,),
               Text("Password",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
              SizedBox(height: 10.h,),
              TextFormfiledWidgets(hintTexts: "Enter your password",),
              SizedBox(height: 12.h,),

              SizedBox(height: 10.h,),
              Row(children: [
                Checkbox(
                  value: _isAcceptCondition, onChanged:(newBool){
                  setState(() {
                    _isAcceptCondition = newBool;
                  });
                },
                ),
                Text("I agree with the terms and conditions by creating \n an account",style: TextStyle(fontSize: 12.sp),),

              ],),
              SizedBox(height:40.h),
              ButtonWidgets(btnName: 'Create Account', onTap: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: RegistrationOTPScreen()));
              },),
              SizedBox(height:20.h ,),


            ],
          ),
        ),
      );
  }

  Container LoginFormMethod() {
    return Container(
            width:375.w,
            height: 520.h,
            decoration:  BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.r),
                    topRight: Radius.circular(20.r))),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Login to your Account",style: GoogleFonts.spaceGrotesk(
                    fontSize: 16.sp,fontWeight: FontWeight.w600
                  ),),
                  SizedBox(height: 5.h,),
                  Text("Make sure that you already have an account.",style: GoogleFonts.spaceGrotesk(fontSize: 12.sp,color: Colors.black.withOpacity(0.5)),),
                  SizedBox(height: 20.h,),
                   Text("Email Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 10.h,),
                  TextFormfiledWidgets(hintTexts: "Enter your email",),
                  SizedBox(height: 12.h,),
                   Text("Password",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
                  SizedBox(height: 10.h,),
              SizedBox(
                height: 55.h,
                child: TextFormField(
                  obscureText: _obsecureText,
                  decoration: InputDecoration(
                    hintText: "Enter your  Password",
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: AppColors.primaryColor),
                      borderRadius: BorderRadius.circular(28.r),
                    ),
                    hintStyle: const TextStyle(
                        fontSize: 14
                    ),
                    suffixIcon: IconButton(icon: Icon(_obsecureText?Icons.remove_red_eye_outlined:Icons.visibility_off_outlined), onPressed: () {
                      setState(() {
                        _obsecureText = !_obsecureText;
                      });
                    },),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(28.r),

                    )
                ),),
              ),
                  SizedBox(height: 10.h,),
                  Row(children: [
                    Checkbox(
                        value: _isCheckBox, onChanged:(newBool){
                      setState(() {
                        _isCheckBox = newBool;
                      });
                    },
                    ),
                    const Text("Stay Loggined"),
                    Spacer(),
                    InkWell(
                      onTap: (){},
                        child:  Text("Forget Password?",style: TextStyle(fontWeight: FontWeight.w500,color: AppColors.primaryColor),))
                  ],),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(children: [
                      Text("Login as Vendor?",style: TextStyle(fontSize: 15),),
                      Spacer(),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: Vendor_LoginScreenAndRegistration()));

                        },
                          child: Text("Login",style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.primaryColor),))
                    ],),
                  ),
                  SizedBox(height:70.h),
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BottomNavBar()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(height: 50.h,width: double.infinity,decoration: BoxDecoration(
                        color: AppColors.thirdColor,
                        borderRadius: BorderRadius.circular(30.r),

                      ),
                        child:  Center(child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w500),)),
                      ),
                    ),
                  ),


                ],
              ),
            ),
          );
  }
}
