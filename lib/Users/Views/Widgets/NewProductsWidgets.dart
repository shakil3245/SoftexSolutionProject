
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewProductWidget extends StatelessWidget {
  const NewProductWidget({
    super.key, required this.image, required this.title, required this.price,
  });
  final String image, title,price;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      width: 115.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 120.h,
              width: 115.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius:
                  BorderRadius.circular(12.r)),
              child: Padding(
                padding: const EdgeInsets.all(6),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image.network(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                  fontSize: 12.sp, color: Colors.white),
            ),
          ),
          Text(
            "\$$price",
            style: TextStyle(
                fontSize: 17.sp,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )
        ],
      ),
    );
  }
}
