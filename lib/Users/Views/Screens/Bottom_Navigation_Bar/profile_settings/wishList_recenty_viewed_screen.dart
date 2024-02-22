import 'package:ecommerchapp/Users/Views/Utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WishlistRecentlyViewdScreen extends StatefulWidget {
  const WishlistRecentlyViewdScreen({Key? key}) : super(key: key);

  @override
  State<WishlistRecentlyViewdScreen> createState() =>
      _WishlistRecentlyViewdScreenState();
}

class _WishlistRecentlyViewdScreenState
    extends State<WishlistRecentlyViewdScreen> {
  bool _isFav = false;
  void _addFavourite(int index){
     _listItem.add(index);

  }
  void _removeFavourite(int index){
     _listItem.remove(index);
  }
  List<int> _listItem =[];
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
          "Recently viewed",
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 30.h,
                    width: 146.w,
                    decoration: BoxDecoration(
                        color: AppColors.lightOffColor,
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 50.w,
                        ),
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.blueColor),
                        ),
                        SizedBox(
                          width: 26.w,
                        ),
                        Container(
                          height: 25.h,
                          width: 25.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.r),
                              color: AppColors.blueColor,
                              border:
                                  Border.all(width: 2, color: Colors.white)),
                          child: Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 15,
                          ),
                        )
                      ],
                    )),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: 30.h,
                    width: 146.w,
                    decoration: BoxDecoration(
                        color: AppColors.offWhiteColor.withOpacity(0.8),
                        borderRadius: BorderRadius.circular(20.r)),
                    child: Center(
                        child: Row(
                      children: [
                        SizedBox(
                          width: 35.w,
                        ),
                        Text(
                          "Yesterday",
                          style: TextStyle(
                              fontSize: 15.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        // Container(
                        //   height: 25.h,
                        //   width: 25.w,
                        //   decoration: BoxDecoration(
                        //       borderRadius: BorderRadius.circular(30.r),
                        //       color: AppColors.lightOffColor,
                        //       border: Border.all(width: 1, color: Colors.white)),
                        //   child: Icon(Icons.check,color: Colors.white,size: 15,),
                        // )
                      ],
                    )),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 4,
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      childAspectRatio: 0.74),
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 232.h,
                      width: 165.w,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 160.h,
                                  width: 165.w,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(6),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10.r),
                                      child: Image.network(
                                        'https://i.pinimg.com/736x/fe/33/05/fe330595615d22af6995b920f97da28c.jpg',
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
                                "\$17,00",
                                style: TextStyle(
                                    fontSize: 17.sp,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                          Positioned(
                            child: IconButton(
                                onPressed: () {
                                  setState(() {

                                  });
                                 if(_listItem.contains(index)){
                                   return  _removeFavourite(index);
                                 }else{
                                   return  _addFavourite(index);
                                 }
                                },
                                icon:_listItem.contains(index)? Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                  size: 28,
                                ): Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 28,
                                )),
                            top: 6,
                            right: 6,
                          ),
                        ],
                      ),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
