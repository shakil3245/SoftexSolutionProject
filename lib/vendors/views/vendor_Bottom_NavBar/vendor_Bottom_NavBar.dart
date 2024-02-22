
import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/OrdersToVendors.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/eraingsScreen.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/uploadProductScreen.dart';
import 'package:ecommerchapp/vendors/views/vendor_Bottom_NavBar/vendor_bottom_Screens/vendor_Profile.dart';
import 'package:flutter/material.dart';

class VendorBottomNavBar extends StatefulWidget {
  const VendorBottomNavBar({Key? key}) : super(key: key);

  @override
  State<VendorBottomNavBar> createState() => _VendorBottomNavBarState();
}

class _VendorBottomNavBarState extends State<VendorBottomNavBar> {

  final _Pages =[Earnings(),UploadProduct(),OrdersToVendor(),VendorProfile()];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white.withOpacity(0.5),
        currentIndex: _currentIndex,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: AppColors.thirdColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on),label: "Earning"),
          BottomNavigationBarItem(icon: Icon(Icons.upload),label: "Upload"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Orders"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),

        ],
        onTap: (index){
          setState(() {
            _currentIndex=index;
          });
        },
      ),
      body: _Pages[_currentIndex],
    );
  }
}