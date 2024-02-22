import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../Utils/app_colors.dart';
import '../../../Widgets/buttonWidgets.dart';
import 'login_and_registration_Screen.dart';

class RegistrationOTPScreen extends StatefulWidget {
  const RegistrationOTPScreen({Key? key}) : super(key: key);

  @override
  State<RegistrationOTPScreen> createState() => _RegistrationOTPScreenState();
}

class _RegistrationOTPScreenState extends State<RegistrationOTPScreen> {
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
                  padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
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
                                    // setState(() {
                                    //   _isRegister = false;
                                    // });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    height: 52.h,
                                    child: Center(
                                        child: Text(
                                      "Login",
                                      style: GoogleFonts.spaceGrotesk(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white.withOpacity(0.5)),
                                    )),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: InkWell(
                                  onTap: () {
                                    // setState(() {
                                    //   _isRegister = true;
                                    // });
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.whiteColor,
                                        borderRadius:
                                            BorderRadius.circular(25.r)),
                                    height: 52.h,
                                    child: Center(
                                        child: Text(
                                      "Register",
                                      style: GoogleFonts.spaceGrotesk(
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black),
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
            SizedBox(height: 20.h,),
            Container(
              height: 564.h,
              width: 375.w,
              decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(10.r),
                      bottomRight: Radius.circular(10.r),
                      topLeft: Radius.circular(20.r),
                      topRight: Radius.circular(20.r))),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(children: [
                    IconButton(onPressed: (){
                    Navigator.pop(context);
                    }, icon: Icon(Icons.arrow_back)),
                    Text("Verify Your Account",style: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w500),)
                  ],),
                ),
                SizedBox(height: 10.h,),
                SizedBox(
                  height: 60,width: 60,
                  child: CircleAvatar(child: Icon(Icons.person,size: 40,color: AppColors.secondaryColor,),backgroundColor: Colors.black.withOpacity(0.1),
                  ),
                ),
                Text('User name',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                Text("Softexsolution@gmail.com"),

                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 15,vertical: 20),
                  child: Container(
                    width: 375.w,
                    height: 80,
                    decoration: BoxDecoration(
                      color: AppColors.YellowWithOpacity,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: SizedBox(
                            height: 20.h,width: 20.w,
                              child: CircleAvatar(
                                backgroundColor: AppColors.YellowColor,
                                child: Icon(Icons.done,size: 15,color: Colors.white,),)),
                        ),
                        Text("We have sent you 6 digits verification code to \n your email. Please kindly check! ",style: TextStyle(fontSize: 13,color: AppColors.YellowColor),)
                      ],),
                    ),
                  ),
                ),
                SizedBox(height: 5.h),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: PinCodeTextField(
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(20.r),
                      fieldHeight: 58.h,
                      fieldWidth: 48.w,
                      selectedColor: Colors.black.withOpacity(0.2),
                      selectedFillColor: Colors.white,
                      activeFillColor: Colors.white,
                      inactiveColor: Colors.white,

                      inactiveFillColor: AppColors.secondaryColor,
                      errorBorderColor: Colors.red,
                      // disabledBorderWidth: 5,

                    ),
                    animationDuration: Duration(milliseconds: 300),

                    enableActiveFill: true,
                    onCompleted: (v) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: AppColors.primaryColor,content: Text("Completed!",style: TextStyle(color: Colors.white),)));
                    },
                    onChanged: (value) {
                      print(value);
                      setState(() {

                      });
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");

                      return true;
                    },appContext: context,
                  ),
                ),
                SizedBox(height: 60.h,),
                Padding(
                  padding:  EdgeInsets.symmetric(horizontal: 20),
                  child: ButtonWidgets(btnName: 'Verify', onTap: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreenAndRegistration()));
                  },),
                ),





              ],),
            )
          ],
        ),
      ),
    );
  }
}
