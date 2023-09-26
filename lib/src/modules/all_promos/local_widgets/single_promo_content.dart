import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SinglePromoWidget extends StatefulWidget {
  const SinglePromoWidget({super.key});

  @override
  State<SinglePromoWidget> createState() => _SinglePromoWidgetState();
}

class _SinglePromoWidgetState extends State<SinglePromoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150.h,
      decoration: const BoxDecoration(
        color: Colors.white
      ),
      child:Column(
        children: [
          Row(
            children: [

            ],
          ),

        ],
      )
    );
  }
}
