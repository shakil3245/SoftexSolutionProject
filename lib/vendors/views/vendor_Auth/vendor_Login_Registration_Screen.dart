import 'package:ecommerchapp/Users/Views/Screens/AuthScreens/Login_and_Registration/registration_otp_Screen.dart';
import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:ecommerchapp/vendors/views/vendor_Auth/vendor_OTP_secreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Users/Views/Screens/AuthScreens/Login_and_Registration/login_and_registration_Screen.dart';
import '../../../Users/Views/Widgets/buttonWidgets.dart';
import '../../../Users/Views/Widgets/textFormfiledWidgets.dart';
import '../vendor_Bottom_NavBar/vendor_Bottom_NavBar.dart';

class Vendor_LoginScreenAndRegistration extends StatefulWidget {
  const Vendor_LoginScreenAndRegistration({Key? key}) : super(key: key);

  @override
  State<Vendor_LoginScreenAndRegistration> createState() => _Vendor_LoginScreenAndRegistrationState();
}

class _Vendor_LoginScreenAndRegistrationState extends State<Vendor_LoginScreenAndRegistration> {
  bool _isRegister = false;
  bool? _isCheckBox = false;
  bool? _isAcceptCondition = false;
  bool _obsecureText = true;
  List<String> _type = ['Supplier', 'WholeSeller', 'Factory'];
  var selectedval = "Supplier";
  bool _istap = false;
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
                        'Hello Vendor',
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
                                child: Center(
                                  child:InkWell(
                                    onTap: (){
                                      setState(() {
                                        _isRegister = true;
                                      });
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: _isRegister
                                              ? Colors.white
                                              : Colors.transparent,
                                          borderRadius:
                                          BorderRadius.circular(25.r)),
                                      height: 52.h,
                                      child: Center(
                                          child: DropdownButton(
                                            icon: Icon(Icons.keyboard_arrow_down),

                                            dropdownColor: AppColors.whiteColor,
                                            focusColor: Colors.green,
                                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                                            borderRadius: BorderRadius.circular(20.r),
                                            elevation: 0,
                                            underline:Container() ,

                                            hint: Text("Register As",style: TextStyle(color:_isRegister?Colors.black: Colors.white),),
                                            items: _type
                                                .map((item) => DropdownMenuItem(
                                                value: item,
                                                child: Text(item)))
                                                .toList(),
                                            value:selectedval, onChanged: (value) {
                                            setState(() {
                                              selectedval = value.toString();
                                            });
                                          } ,
                                            onTap: (){
                                              setState(() {
                                                _isRegister = true;
                                              });
                                            },
                                          ),),
                                    ),
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
              VendorLoginFormMethod(),
            if(_isRegister)
            if(selectedval == "Supplier")
              SupplierRegistrationFiledMethod(),
            if(selectedval == "WholeSeller")
            WholeSellerRegistrationFiledMethod(),
            if(selectedval =="Factory")
            FactoryRegistrationFiledMethod(),

          ],
        ),
      ),
    );
  }




  //All vendors like Supplier , woleseller , etc can login via this form
  Container VendorLoginFormMethod() {
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
                Text("Login as User?",style: TextStyle(fontSize: 15),),
                Spacer(),
                InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: LoginScreenAndRegistration()));
                    },
                    child: Text("Login",style: TextStyle(fontWeight: FontWeight.w600,color: AppColors.primaryColor),))
              ],),
            ),
            SizedBox(height:65.h),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: InkWell(
                onTap: (){

                  Navigator.pushReplacement(context, PageTransition(type: PageTransitionType.fade, child: VendorBottomNavBar()));
                },
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
  //THIS IS SUPPLIER  REGISTRATION FORM
  Container SupplierRegistrationFiledMethod() {
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
            Text("Company Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your Company name",),
            SizedBox(height: 20.h,),
            Text("Email your Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your email",),
            SizedBox(height: 12.h,),
            Text("Password",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your password",),
            SizedBox(height: 10.h,),
            Text("Business Type",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your business type",),
            SizedBox(height: 12.h,),
            Text("Country Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your country address",),
            SizedBox(height: 10.h,),
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
            Text("Confirm Password",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 55.h,
              child: TextFormField(
                obscureText: _obsecureText,
                decoration: InputDecoration(
                    hintText: "Enter your confirm Password",
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
            SizedBox(height: 20.h,),
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
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: VendorRegistrationOTPScreen()));
            },),
            SizedBox(height:20.h ,),


          ],
        ),
      ),
    );
  }

//THIS IS WHOLE SELLER REGISTRATION FORM
  Container WholeSellerRegistrationFiledMethod() {
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
            Text("Company Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your Company name",),
            SizedBox(height: 20.h,),
            Text("Contact Person Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your contact person name",),
            SizedBox(height: 20.h,),
            Text("Email your Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your email",),
            SizedBox(height: 10.h,),
            Text("Business Type",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your business type",),
            SizedBox(height: 10.h,),
            Text("Phone Number",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your phone number",),
            SizedBox(height: 10.h,),
            Text("Country Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your country address",),
            SizedBox(height: 10.h,),
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
            Text("Confirm Password",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 55.h,
              child: TextFormField(
                obscureText: _obsecureText,
                decoration: InputDecoration(
                    hintText: "Enter your confirm Password",
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
            SizedBox(height: 20.h,),
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
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: VendorRegistrationOTPScreen()));
            },),
            SizedBox(height:20.h ,),


          ],
        ),
      ),
    );
  }

  //THIS IS WHOLE SELLER REGISTRATION FORM
  Container FactoryRegistrationFiledMethod() {
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
            Text("Factory Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your factory name",),
            SizedBox(height: 20.h,),
            Text("Contact Person Name",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your contact person name",),
            SizedBox(height: 20.h,),
            Text("Email your Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your email",),
            SizedBox(height: 10.h,),
            Text("Industy Type",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your industry type",),
            SizedBox(height: 10.h,),
            Text("Tax Id",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your tax id",),
            SizedBox(height: 10.h,),
            Text("Country Address",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            const TextFormfiledWidgets(hintTexts: "Enter your country address",),
            SizedBox(height: 10.h,),
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
            Text("Confirm Password",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w600),),
            SizedBox(height: 10.h,),
            SizedBox(
              height: 55.h,
              child: TextFormField(
                obscureText: _obsecureText,
                decoration: InputDecoration(
                    hintText: "Enter your confirm Password",
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
            SizedBox(height: 20.h,),
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
              Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: VendorRegistrationOTPScreen()));
            },),
            SizedBox(height:20.h ,),


          ],
        ),
      ),
    );
  }

}
