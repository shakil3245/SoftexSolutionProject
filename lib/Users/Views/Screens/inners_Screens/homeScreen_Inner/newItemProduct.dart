import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../Widgets/product_Widgets.dart';
import '../productDetails.dart';

class NewItemsProducts extends StatelessWidget {
  const NewItemsProducts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215.h,
      child: ListView.builder(
          itemCount: 20,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetails(),));
              },
              child: const ProductWidgets(image: 'https://media.istockphoto.com/id/1350560575/photo/pair-of-blue-running-sneakers-on-white-background-isolated.jpg?s=612x612&w=0&k=20&c=A3w_a9q3Gz-tWkQL6K00xu7UHdN5LLZefzPDp-wNkSU=', title: 'Lorem ipsum dolor sit amet consectetur.', price: '125,00',),
            );
          }),
    );
  }
}
