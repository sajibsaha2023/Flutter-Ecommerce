import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:60.h ,
      width: MediaQuery.sizeOf(context).width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.menu,color: Colors.black,),
         Text("Home",style:TextStyle(color: Colors.black),),
          Stack(
            alignment: Alignment.topRight,
            children: [
              Container(
                height: 36.h,
                width: 36.h,
                decoration: BoxDecoration(
                  color: Color(0xffE84C4F),
                  borderRadius: BorderRadius.circular(36.h/2)
                ),
                child: Icon(Icons.notifications_none,color: Colors.white,),
              ),
              Positioned(
                  child:Image.asset("assets/images/batch.png"),)
            ],
          )
        ],
      ),
    );
  }
}
