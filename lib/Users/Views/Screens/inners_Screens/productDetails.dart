import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:ecommerchapp/Users/Views/Widgets/categoryAndSeeAllWidgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  final ValueNotifier<int> _carrentindex = ValueNotifier(0);

  final List<Color> _colorList = [
    const Color(0xFFebebeb),
    const Color(0xFF000000),
    const Color(0xFF0d29b9),
    const Color(0xFFff3233),
    const Color(0xFF08a8b9),
    const Color(0xFFe4a718)
  ];
  List<String> _sizeList = ['Xs', 'S', 'M', 'L', "XL", '2XL'];
  Color _selectedColor = const Color(0xFFebebeb);
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Product Details",
          style: TextStyle(color: Colors.white, fontSize: 18.sp,),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    onPageChanged: (index, _) {
                      _carrentindex.value = index;
                    },
                    height: 250.h,
                    autoPlay: false,
                    viewportFraction: 1,
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
                            color: Colors.white.withOpacity(0.6),
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
                Positioned(
                  bottom: 10,
                  left: 140,
                  child: Padding(
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
                                      width: currentValue == i ? 20.w : 11.w,
                                      decoration: BoxDecoration(
                                        color: currentValue == i
                                            ? Colors.white
                                            : Colors.grey,
                                        borderRadius:
                                            BorderRadius.circular(10.r),
                                      ),
                                    )),
                            ],
                          );
                        }),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Text(
                        "Product name will be there Product name will",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold),
                      )),
                      Padding(
                        padding: EdgeInsets.only(left: 20.w),
                        child: Column(
                          children: [
                            Container(
                                decoration: BoxDecoration(
                                    color: AppColors.thirdColor,
                                    borderRadius: BorderRadius.circular(10.r)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "\$700",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18.sp,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Text(
                    "Available Sizes",
                    style: TextStyle(color: Colors.white),
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
                                                horizontal: 15.w,
                                                vertical: 2.h),
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
                  Text(
                    "Description",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.sp,fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10.h,),
                  Text(
                      "The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. The speaker unit contains a diaphragm that is precision-grown from NAC Audio bio-cellulose, making it stiffer, lighter and stronger than regular PET speaker units, and allowing the sound-producing diaphragm to vibrate without the levels of distortion found in other speakers. ",textAlign: TextAlign.start,style: TextStyle(color: Colors.white,fontSize: 13.sp),),
                  SizedBox(height: 15.h,),
                  Text("Review (102)",style: TextStyle(color: Colors.white,fontSize: 16),),
                  SizedBox(height: 10.h,),
                  SizedBox(
                    height: 300,

                    child: ListView.builder(

                      itemCount: 3,
                        itemBuilder: (context,index){
                      return Padding(
                        padding:  EdgeInsets.only(top: 8),
                        child: Container(
                          decoration: BoxDecoration(color: AppColors.thirdColor,borderRadius: BorderRadius.circular(10.r)),

                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: 10.w,vertical: 10.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [

                                    Container(
                                        height: 40.h,width: 40.w,
                                        child: ClipRRect(borderRadius: BorderRadius.circular(50),child: Image.network("https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg",fit: BoxFit.fill,),)),
                                    SizedBox(width: 10.w,),
                                    Text("Lorem ipsum ",style: TextStyle(color: Colors.white),),
                                    Spacer(),
                                    Text("1 Month ago",style: TextStyle(color: Colors.white),)
                                  ],),
                                Container(
                                  height: 40,width:200,
                                  child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder: (context,index){return Icon(Icons.star,color: Colors.orange,size: 18.sp,);}),
                                ),
                                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",style: TextStyle(fontSize: 14.sp,color: Colors.white,),)
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                  SizedBox(height: 10.h,),
                  Text("See All Reviews",style: TextStyle(fontSize: 14.sp,color: Colors.white),),
                  SizedBox(height: 10.h,),
                  CategoryAndSeeAllWidgets(categoryName: "Another Product", onTap: (){}),
                  SizedBox(height: 10.h,),
                  Container(
                    height: 250,
                    child: ListView.builder(
                      itemCount: 10,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context,index){
                      return  Column(
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
                    }),
                  )



                ],
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 15),
        child: Container(
          height: 50.h,width: 326.w,decoration: BoxDecoration(color: AppColors.btnColor,borderRadius: BorderRadius.circular(20.r)),child: Center(child: Text("Add To Cart",style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold,color: Colors.white),)),
        ),
      ),
    );
  }
}
