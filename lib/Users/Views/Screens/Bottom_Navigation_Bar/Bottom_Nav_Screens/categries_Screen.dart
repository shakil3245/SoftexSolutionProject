import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Utils/app_colors.dart';
import '../../../Widgets/chipsWidgets.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  List<String> _categories = ['All','Female','Male',];
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        leading: Container(),
        centerTitle: true,
        title: const Text("All Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(height: 20.h,),
              Container(
                height: 40.h,
                width: 340.w,
                child: Row(
                  children: [
                    Expanded(
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: _categories.length,
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
                                      width: 100.w,
                                      decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(10.r),border:_selectedIndex == index? Border.all(width:2,color: AppColors.blueColor):Border.all()),
                                      child: Center(child: Padding(
                                        padding:  EdgeInsets.symmetric(horizontal: 15.w,vertical: 2.h),
                                        child: Text(_categories[index],style:  TextStyle(color:_selectedIndex == index? AppColors.blueColor:Colors.black),),
                                      )),
                                    ),
                                  )
                              );
                            }))
                  ],
                ),
              ),
            SizedBox(height: 10.h,),
            Container(
              height: 1000.h,
              child: ListView.builder(itemBuilder: (context,index){
                return Card(
                  color: AppColors.whiteColor,
                  child: ExpansionTile(
                    leading:Container(height: 45.h,width: 45.w,child: ClipRRect(borderRadius: BorderRadius.circular(10.r),child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ94RnPsmwKf7cjxHCSFNRMSun8Asxkbkof0w&usqp=CAU',fit: BoxFit.cover,),),),
                    title: Text("Cloth"),
                    children: [

                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: 6,
                          itemBuilder: (context,index){
                            return  Padding(
                              padding:  EdgeInsets.symmetric(horizontal: 6.w,vertical: 4),
                              child: Container(height: 40.h,decoration: BoxDecoration(color: AppColors.thirdColor,borderRadius: BorderRadius.circular(10.r)),child: Center(child: Text("Dress",style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.bold,color: Colors.white),)),),
                            );
                          })

                    ],),);
              },itemCount: 6,),
            ),

          ],),
        ),
      ),
    );
  }
}

