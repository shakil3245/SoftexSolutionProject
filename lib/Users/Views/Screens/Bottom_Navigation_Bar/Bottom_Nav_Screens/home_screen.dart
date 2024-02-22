import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/Bottom_Nav_Screens/categries_Screen.dart';
import 'package:ecommerchapp/Users/Views/Screens/Bottom_Navigation_Bar/Bottom_Nav_Screens/profile_Screen.dart';
import 'package:ecommerchapp/Users/Views/Screens/inners_Screens/Most_Popular_Screen.dart';
import 'package:ecommerchapp/Users/Views/Widgets/categoryAndSeeAllWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import '../../../Utils/app_colors.dart';
import '../../../Widgets/category_Products_widgets.dart';
import '../../../Widgets/product_Widgets.dart';
import '../../inners_Screens/CategoryGallaySellAllScreen.dart';
import '../../inners_Screens/Grid_View_Category.dart';
import '../../inners_Screens/NewItemsScreen.dart';
import '../../inners_Screens/filterScreen.dart';
import '../../inners_Screens/filter_result_Screen.dart';
import '../../inners_Screens/homeScreen_Inner/newItemProduct.dart';
import '../../inners_Screens/homeScreen_Inner/top_product_circle_Avatar.dart';
import '../../inners_Screens/productDetails.dart';
import '../../inners_Screens/search_screen.dart';
import '../../lets_Explore_Screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ValueNotifier<int> _carrentindex = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 30.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 13.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {
                          Navigator.push(context, PageTransition(type: PageTransitionType.leftToRightWithFade, child: FilterScreen()));

                        },
                        icon:  Icon(
                          Icons.filter_list,
                          color: Colors.white,
                          size: 24,
                        )),
                    Text(
                      "E-Shop",
                      style: TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 22.sp,
                          fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.push(context, PageTransition(type: PageTransitionType.bottomToTop, child: ProfileScreen()));
                      },
                      child: ClipOval(
                        child: Image.network(
                          'https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?q=80&w=2885&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                          width: 36.w,
                          height: 36.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi, Shakil",
                    style:
                        TextStyle(fontSize: 16.sp, color: AppColors.whiteColor),
                  ),
                  Text(
                    "What are you looking for \ntoday?",
                    style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                child: SizedBox(
                  height: 45.h,
                  width: 326.w,
                  child: TextFormField(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const SearchScreen()));
                    },
                    readOnly: true,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search here...",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintStyle: TextStyle(
                            fontSize: 13, color: Colors.black.withOpacity(0.5)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.r))),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, _) {
                    _carrentindex.value = index;
                  },
                  height: 150.h,
                  autoPlay: true,
                  viewportFraction: 1,
                  autoPlayInterval: Duration(seconds: 5),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.ease,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.2,
                  scrollDirection: Axis.horizontal,
                ),
                items: [1, 2, 3, 4, 5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Center(
                          child: Text(
                            'text $i',
                            style: TextStyle(fontSize: 16.sp),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ValueListenableBuilder(
                    valueListenable: _carrentindex,
                    builder: (context, currentValue, _) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 5; i++)
                            Padding(
                                padding: const EdgeInsets.all(4),
                                child: Container(
                                  height: 11.h,
                                  width: currentValue == i ? 30.w : 11.w,
                                  decoration: BoxDecoration(
                                    color: currentValue == i
                                        ? Colors.white
                                        : Colors.grey,
                                    borderRadius: BorderRadius.circular(10.r),
                                  ),
                                )),
                        ],
                      );
                    }),
              ),
              //Categories

              CategoryAndSeeAllWidgets(categoryName: "Categories", onTap: () {
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const CategoryGallaySellAllScreen()));
              }),

              SizedBox(height: 10.h,),
              const GridViewCategoryProduct(),
              SizedBox(height: 10.h,),






             const Text("Top Products",style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 10.h,),
              //THIS WILL SHOW TOP PRODUCTS CIRCLE AVATAR
              TopProducts(),
              SizedBox(height: 10.h,),
              CategoryAndSeeAllWidgets(categoryName: "New Items", onTap: (){
                Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const NewItemsScreen()));
              }),
              SizedBox(height: 8.h,),
              //THIS WILL SHOW NEW ITEMS PRODUCTS IN LIST VIEW BUILDER
              NewItemsProducts(),
              SizedBox(
                height: 10.h,
              ),
              //MOST POPULAR -------------------
              CategoryAndSeeAllWidgets(
                categoryName: 'Most Popular',
                onTap: () {
                  Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeft, child: const MostPopularScreen()));
                },
              ),
              SizedBox(
                height: 10.h,
              ),

              //THIS WILL SHOW MOST POPULAR PRODUCT CARD
              Container(
                height: 150.h,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails()));
                        },
                        child: Padding(
                          padding: EdgeInsets.only(right: 8.w),
                          child: Container(
                            height: 150.h,
                            width: 104.w,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 103.h,
                                  width: 93.w,
                                  child: Padding(
                                    padding:
                                    EdgeInsets.symmetric(vertical: 6.h),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        "https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=2787&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8.w, vertical: 8.h),
                                  child: Row(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "1780",
                                            style: TextStyle(
                                                fontSize: 15.sp,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Icon(
                                            Icons.favorite,
                                            size: 16.sp,color: AppColors.primaryColor,
                                          ),
                                        ],
                                      ),
                                      Spacer(),
                                      Text(
                                        "New",
                                        style: TextStyle(fontSize: 13.sp),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(height: 15.h,),


            ],
          ),
        ),
      ),
    );
  }
}


