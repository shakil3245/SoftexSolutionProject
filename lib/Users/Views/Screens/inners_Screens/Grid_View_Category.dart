import 'package:flutter/cupertino.dart';

import '../../Widgets/category_Products_widgets.dart';

class GridViewCategoryProduct extends StatefulWidget {
  const GridViewCategoryProduct({Key? key}) : super(key: key);

  @override
  State<GridViewCategoryProduct> createState() => _GridViewCategoryProductState();
}

class _GridViewCategoryProductState extends State<GridViewCategoryProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.85,
          crossAxisSpacing: 8,mainAxisSpacing: 8
      ),
      itemBuilder: (context, index) {
        return CategoryProductGallaryWidgets(image: 'https://images.unsplash.com/photo-1542291026-7eec264c27ff?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2hvZXN8ZW58MHx8MHx8fDA%3D', GategoryName: 'Shoes', ProductLength: '530',);

      },itemCount: 4,);
  }
}
