import 'package:ecommerchapp/Users/Views/Screens/inners_Screens/productDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Utils/app_colors.dart';
import '../../Widgets/NewProductsWidgets.dart';
import '../../Widgets/product_Widgets.dart';

class NewItemsScreen extends StatefulWidget {
  const NewItemsScreen({Key? key}) : super(key: key);

  @override
  State<NewItemsScreen> createState() => _NewItemsScreenState();
}

class _NewItemsScreenState extends State<NewItemsScreen> {
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
          "New Items",
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
                      'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=',
                  title: 'Lorem ipsum dolor sit amet consectetur.',
                  price: '125,00',
                ),
              );
            },itemCount: 20,),
      ),
    );
  }
}
