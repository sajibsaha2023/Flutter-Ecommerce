import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MenuBox extends StatelessWidget {
  String menuTitle, menuIcon;
  MenuBox({
    super.key,
    required this.menuIcon,
    required this.menuTitle
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105,
      width: 74,
      //color: Colors.deepOrange,
      child: Column(
        children: [
          Container(
            height: 74.h,
            width: 74.h,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Image.asset(menuIcon),
          ),
           SizedBox(
            height: 5.h,
          ),
          Text(
            menuTitle,
            style:  TextStyle(
                color: Color(0xff7E7E7E),
                fontSize: 14.sp,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }
}
