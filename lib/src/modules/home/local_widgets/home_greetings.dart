import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeGreetings extends StatelessWidget {
  const HomeGreetings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Hello, Yahya',
          style: TextStyle(fontSize: 28.sp, color: Color(0xff3E4462)),
        ),
        SizeOfHeight(heights:10.h),
        const Text(
          'What do you want to eat?',
          style: TextStyle(fontSize: 16, color: Color(0xff7E7E7E)),
        ),
      ],
    );
  }
}
