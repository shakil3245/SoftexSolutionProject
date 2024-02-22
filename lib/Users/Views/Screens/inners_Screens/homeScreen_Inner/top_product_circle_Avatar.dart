
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TopProducts extends StatelessWidget {
  const TopProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                        borderRadius: BorderRadius.circular(30.r)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.r),
                        child: Image.network(
                          "https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  )),
            );
          }),
    );
  }
}