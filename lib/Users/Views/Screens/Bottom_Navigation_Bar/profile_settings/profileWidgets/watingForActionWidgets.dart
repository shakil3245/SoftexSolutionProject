
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WaitingForRatingWidgets extends StatelessWidget {
  const WaitingForRatingWidgets({
    super.key,required this.title,required this.price, required this.rating,
  });

  final title,price;
  final double rating;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340.w,
      height: 109.h,
      child: Row(
        children: [
          Stack(children: [
            Container(height: 109.h,width: 129.w,decoration: BoxDecoration(borderRadius: BorderRadius.circular(9.r),color: Colors.white),
              child: Padding(
                padding:  EdgeInsets.all(5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.network("https://media.istockphoto.com/id/1193750118/photo/beautiful-asian-woman-carrying-colorful-bags-shopping-online-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=j1SpSX7c3qzBrUT5f7HRoOfxQnPxZY_c6yb3AvXA5f8=",fit: BoxFit.cover,),),
              ),),

          ],),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,maxLines: 2,style: TextStyle(fontSize: 12.sp,overflow: TextOverflow.ellipsis,color: Colors.white),),

                Text("\$${price}",style: TextStyle(color: Colors.white,fontSize: 18.sp,fontWeight: FontWeight.bold),),
                RatingBar.builder(
                  initialRating: 0,
                  minRating: 1,
                  itemSize: 20,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,size: 12,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                    rating = rating;
                  },
                ),
              ],),
          ),
        ],
      ),
    );
  }
}


