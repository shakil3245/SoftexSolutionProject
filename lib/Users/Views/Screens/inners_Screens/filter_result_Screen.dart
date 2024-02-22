import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:ecommerchapp/Users/Views/Widgets/chipsWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';

class FilterResultScreen extends StatefulWidget {
  const FilterResultScreen({Key? key}) : super(key: key);

  @override
  State<FilterResultScreen> createState() => _FilterResultScreenState();
}

class _FilterResultScreenState extends State<FilterResultScreen> {
  List<String> _filterSugessions = [
    'Filter',
    'Popularity',
    'Newest',
    'Price hiking'
  ];
  var _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
            size: 18.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sheos",
                style: TextStyle(fontSize: 16.sp, color: Colors.white),
              ),
              Text(
                "Sundals",
                style: TextStyle(fontSize: 24.sp, color: Colors.white),
              ),
              SizedBox(
                height: 10.h,
              ),

              Container(
                height: 40.h,
                width: 340.w,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _filterSugessions.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.only(left: 6.w),
                                child: GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                    print(_selectedIndex.toString());
                                  },
                                  child: Container(
                                    height: 42.h,
                                    decoration: BoxDecoration(color:_selectedIndex == index ?Colors.white:Colors.transparent,borderRadius: BorderRadius.circular(10.r)),
                                    child: Center(child: Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 2.h),
                                      child: Text(_filterSugessions[index],style: TextStyle(color:_selectedIndex == index ? Colors.black:Colors.white),),
                                    )),
                                  ),
                                )
                              );
                            }))
                  ],
                ),
              ),

              //DISCOVER-----------------------
              SizedBox(
                height: 20.h,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 8,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,childAspectRatio: 0.65

                      ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(
                          height: 237.h,
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
                                        'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=',
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
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.orange,
                                    size: 16,
                                  ),
                                  Text(
                                    "4.6",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "  86",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    " Reviews",
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
