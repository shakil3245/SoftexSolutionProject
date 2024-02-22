import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

import '../../Widgets/categoryAndSeeAllWidgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> _searchHistoryList = [
    'Socks',
    'Red Dress',
    'Sunglass',
    'Muster Pants',
    '80-s Skirt'
  ];
  List<String> _recommendationsList = [
    'Skirt',
    'Accessories',
    'Black T-Shirt',
    'Jeans',
    'White Shoes'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Search",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: SizedBox(
                  height: 45.h,
                  width: 326.w,
                  child: TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search here...",
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        hintStyle: TextStyle(
                            fontSize: 13.sp, color: Colors.black.withOpacity(0.5)),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(10.r))),
                  ),
                ),
              ),
              SizedBox(
                height: 12.h,
              ),
              //search history ---------------------
               Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Search Histroy",
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                  SizedBox(
                      height: 35.h,
                      width: 35.w,
                      child: CircleAvatar(
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.delete,
                          color: Colors.red.withOpacity(0.7),
                          size: 19.sp,
                          
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 37.h,
                width: 340.w,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _searchHistoryList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(left: 6.w),
                                child: ActionChip(
                                  backgroundColor: Colors.greenAccent,
                                    label: Text(_searchHistoryList[index])),
                              );
                            }))
                  ],
                ),
              ),

              //recommendation ---------------------
              SizedBox(
                height: 10.h,
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recommendations",
                    style: TextStyle(fontSize: 18.sp, color: Colors.white),
                  ),
                ],
              ),
              SizedBox(
                height: 10.h,
              ),

              Container(
                height: 37.h,
                width: 340.w,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _recommendationsList.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(left: 6.w),
                                child: ActionChip(
                                    label: Text(_recommendationsList[index])),
                              );
                            }))
                  ],
                ),
              ),

              //DISCOVER-----------------------
              SizedBox(
                height: 15.h,
              ),
              Text(
                "Discover",
                style: TextStyle(
                    fontSize: 21.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 215.h,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          height: 215.h,
                          width: 140.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 140.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Text(
                                  "Lorem ipsum dolor sit amet consectetur.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.white),
                                ),
                              ),
                              Text(
                                "\$125,00",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),

              //RECENTLY VIEWD--------

              SizedBox(
                height: 10.h,
              ),
              Text(
                "Recently viewed",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21.sp,
                    color: Colors.white),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 60.h,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 60.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(50.r)),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50.r),
                                  child: Image.network(
                                    "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            )),
                      );
                    }),
              ),
              //NEW ITEM--------
              SizedBox(
                height: 15.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "New Items",
                    style: TextStyle(
                        fontSize: 21.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      SizedBox(
                        width: 15.w,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 18.sp,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 215.h,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {},
                        child: Container(
                          height: 215.h,
                          width: 140.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 140.h,
                                  width: 130.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2940&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              Padding(
                                padding: EdgeInsets.symmetric(vertical: 5.h),
                                child: Text(
                                  "Lorem ipsum dolor sit amet consectetur.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 12.sp, color: Colors.white),
                                ),
                              ),
                              Text(
                                "\$125,00",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 10.h,
              ),
              //MOST POPULAR -------------------
              CategoryAndSeeAllWidgets(
                categoryName: 'Most Popular',
                onTap: () {},
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                height: 150.h,
                child: ListView.builder(
                    itemCount: 20,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.only(right: 8.w),
                        child: InkWell(
                          onTap: () {},
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
                                            size: 16.sp,
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
