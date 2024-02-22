import 'package:ecommerchapp/Users/Views/Screens/inners_Screens/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/app_colors.dart';
import '../../Widgets/Most_popular_Widgets.dart';
import '../../Widgets/NewProductsWidgets.dart';
import '../../Widgets/product_Widgets.dart';

class MostPopularScreen extends StatefulWidget {
  const MostPopularScreen({Key? key}) : super(key: key);

  @override
  State<MostPopularScreen> createState() => _MostPopularScreenState();
}

class _MostPopularScreenState extends State<MostPopularScreen> {
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
        centerTitle: true,
        title: Text(
          "Most Popular",
          style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 5.h),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 0.74,
              crossAxisSpacing: 8,mainAxisSpacing: 8
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
              },
                child: MostPopularWidgets(popularCount: '1780', productLevel: 'New', image: 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',));
          },itemCount: 20,),
      ),
    );
  }
}
