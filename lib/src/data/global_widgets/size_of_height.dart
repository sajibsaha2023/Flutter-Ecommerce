import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizeOfHeight extends StatelessWidget {
   SizeOfHeight({super.key,required this.heights});
  dynamic heights;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heights,
    );
  }
}
