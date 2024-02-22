import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class profileOptionsWidgets extends StatelessWidget {
  const profileOptionsWidgets({
    super.key, required this.title, required this.icon, required this.onTap,
  });
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(children: [
        Icon(icon,color: Colors.white,size: 28,),
        SizedBox(width: 8.w,),
        Text(title,style: TextStyle(color: Colors.white.withOpacity(0.8),fontSize: 16),),
        Spacer(),
        Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,)
      ],),
    );
  }
}