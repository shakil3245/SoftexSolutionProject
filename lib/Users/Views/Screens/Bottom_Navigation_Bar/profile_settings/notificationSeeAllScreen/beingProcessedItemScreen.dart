import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/app_colors.dart';
import '../profileWidgets/GenarelNoticationProductWidgets.dart';
import '../profileWidgets/notificationCardWigets.dart';

class BeingProcessedItemScreen extends StatefulWidget {
  const BeingProcessedItemScreen({Key? key}) : super(key: key);

  @override
  State<BeingProcessedItemScreen> createState() => _BeingProcessedItemScreenState();
}

class _BeingProcessedItemScreenState extends State<BeingProcessedItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,

      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Being Processed Item",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 8),
              child: GenarelNotificationProductCardWidgets(title: 'There will ordered product title', price: '18,00', colorName: 'Green', productSize: 'M', productImages: 'https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=',),
            );
          }),

    );
  }
}
