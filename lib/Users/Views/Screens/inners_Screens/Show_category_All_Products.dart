import 'package:ecommerchapp/Users/Views/Screens/inners_Screens/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/app_colors.dart';
import '../../Widgets/NewProductsWidgets.dart';
import '../../Widgets/product_Widgets.dart';

class ShowCategoryAllProducts extends StatefulWidget {
  const ShowCategoryAllProducts({Key? key}) : super(key: key);

  @override
  State<ShowCategoryAllProducts> createState() => _ShowCategoryAllProductsState();
}

class _ShowCategoryAllProductsState extends State<ShowCategoryAllProducts> {
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
          "All Products",
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
              childAspectRatio: 0.6,
              crossAxisSpacing: 8,mainAxisSpacing: 5
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
              },
              child: const NewProductWidget(
                image:
                'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D',
                title: 'Lorem ipsum dolor sit amet consectetur.',
                price: '126,00',
              ),
            );
          },itemCount: 20,),
      ),
    );
  }
}
