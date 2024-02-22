import 'package:ecommerchapp/Users/Views/Screens/inners_Screens/search_screen.dart';
import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

import 'filter_result_Screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  List<String> _sizeList = ['Xs', 'S', 'M', 'L', "Xl", '2XL'];

  final List<Color> _colorList = [
    const Color(0xFFebebeb),
    const Color(0xFF000000),
    const Color(0xFF0d29b9),
    const Color(0xFFff3233),
    const Color(0xFF08a8b9),
    const Color(0xFFe4a718)
  ];
  Color _selectedColor = const Color(0xFFebebeb);
  int _selectedIndex = 0;

  RangeValues values = const RangeValues(50, 250);

  @override
  Widget build(BuildContext context) {
    RangeLabels _labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40.h,
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.w),
                  child: Text(
                    "Search",
                    style: TextStyle(fontSize: 25.sp, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 36.h,
                  width: 234.w,
                  child: TextFormField(
                    onTap: (){
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.fade,
                              child: const SearchScreen()));
                    },
                      readOnly: true,
                      decoration: InputDecoration(
                          filled: true,

                          contentPadding: EdgeInsets.symmetric(horizontal: 1.w),
                          hintStyle: TextStyle(fontSize: 15.sp),
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.r)))),
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Filter",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold),
                ),
                Spacer(),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.close,
                      color: Colors.white,
                      size: 25,
                    )),
              ],
            ),
            GridView.builder(
                shrinkWrap: true,
                itemCount: 10,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 5,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    childAspectRatio: 0.65),
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
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
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        "Dress",
                        style: TextStyle(color: Colors.white, fontSize: 13.sp),
                      ),
                    ],
                  );
                }),

            Text(
              "Size",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 35.h,
              width: 340.w,
              child: Row(
                children: [
                  Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _sizeList.length,
                          itemBuilder: (context, index) {
                            return Padding(
                                padding: EdgeInsets.only(left: 6.w),
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _selectedIndex = index;
                                    });
                                    print(_selectedIndex.toString());
                                  },
                                  child: Container(
                                    height: 35.h,
                                    decoration: BoxDecoration(
                                        color: _selectedIndex == index
                                            ? Colors.white
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(10.r)),
                                    child: Center(
                                        child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 15.w, vertical: 2.h),
                                      child: Text(
                                        _sizeList[index],
                                        style: TextStyle(
                                            color: _selectedIndex == index
                                                ? Colors.black
                                                : Colors.white),
                                      ),
                                    )),
                                  ),
                                ));
                          }))
                ],
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "Color",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: _colorList.map((color) {
                return Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: InkWell(
                    onTap: () {
                      _selectedColor = color;
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    child: CircleAvatar(
                      backgroundColor: color,
                      child: Visibility(
                          visible: color == _selectedColor,
                          child: const Icon(
                            Icons.check,
                            size: 25,
                          )),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Row(
              children: [
                Text(
                  "Price",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Spacer(),
                Text(
                  "\$10",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      width: 20,
                      child: Divider(
                        height: 5,
                        thickness: 2,
                      )),
                ),
                Text(
                  "\$150",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
            RangeSlider(
                values: values,
                divisions: 10,
                min: 0,max: 500,
                labels: _labels,
                onChanged: (val) {
                  setState(() {
                    values = val;
                  });
                }),
            SizedBox(height: 70.h,),
            Row(children: [
              Container(height: 50.h,width: 91.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(width: 1,color: Colors.white.withOpacity(0.4))),child: Center(child: Text("Clear",style: TextStyle(fontSize: 22,color: Colors.white.withOpacity(0.4)),)),),
              SizedBox(width: 10.w,),
              InkWell(
                onTap: (){
                  Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: FilterResultScreen()));
                },
                  child: Container(height: 50.h,width: 233.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),border: Border.all(width: 1,color: Colors.white)),child: Center(child: Text("Apply",style: TextStyle(fontSize: 22.sp,color: Colors.white),)),))
            ],)
          ],
        ),
      ),
    );
  }
}
