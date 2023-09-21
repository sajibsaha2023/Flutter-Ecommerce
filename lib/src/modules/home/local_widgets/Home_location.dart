import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGreeting extends StatefulWidget {
  const HomeGreeting({super.key});

  @override
  State<HomeGreeting> createState() => _HomeGreetingState();
}

class _HomeGreetingState extends State<HomeGreeting> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 36.h,
      width: 238.w,
      decoration: BoxDecoration(
        color: const Color(0xffE84C4F).withOpacity(.2),
        borderRadius: BorderRadius.circular(36.r),
      ),
      child:  Padding(
        padding: EdgeInsets.only(left: 16.w, right: 16.w),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Jl . Jayakatwang no 301',
              style: TextStyle(fontSize: 16, color: Color(0xff7E7E7E)),
            ),
            Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xff7E7E7E),
            )
          ],
        ),
      ),
    );
  }
}
