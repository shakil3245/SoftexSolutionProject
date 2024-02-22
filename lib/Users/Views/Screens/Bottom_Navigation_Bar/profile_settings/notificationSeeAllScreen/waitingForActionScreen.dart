import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../Utils/app_colors.dart';
import '../profileWidgets/notificationCardWigets.dart';

class WaitingForAction extends StatefulWidget {
  const WaitingForAction({Key? key}) : super(key: key);

  @override
  State<WaitingForAction> createState() => _WaitingForActionState();
}

class _WaitingForActionState extends State<WaitingForAction> {
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
          "Waiting for Action",
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
          child: NotificationProductCardWidgets(title: 'Attractive dress for girls', price: '17,00', colorName: 'Red', productSize: 'XL', productImages: 'https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=',),
        );
      }),

    );
  }
}
