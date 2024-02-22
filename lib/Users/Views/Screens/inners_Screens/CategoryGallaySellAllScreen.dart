import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/app_colors.dart';
import '../../Widgets/Most_popular_Widgets.dart';
import '../../Widgets/NewProductsWidgets.dart';
import '../../Widgets/category_Products_widgets.dart';
import '../../Widgets/product_Widgets.dart';

class CategoryGallaySellAllScreen extends StatefulWidget {
  const CategoryGallaySellAllScreen({Key? key}) : super(key: key);

  @override
  State<CategoryGallaySellAllScreen> createState() => _CategoryGallaySellAllScreenState();
}

class _CategoryGallaySellAllScreenState extends State<CategoryGallaySellAllScreen> {
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
          "Category",
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
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.85,
              crossAxisSpacing: 8,mainAxisSpacing: 8
          ),
          itemBuilder: (context, index) {
            return const CategoryProductGallaryWidgets(image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D', GategoryName: 'Shoes', ProductLength: '530',);
          },itemCount: 20,),
      ),
    );
  }
}
