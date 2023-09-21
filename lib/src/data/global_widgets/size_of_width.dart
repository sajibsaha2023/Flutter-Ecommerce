import 'package:flutter/material.dart';

class SizeOfWidth extends StatelessWidget {
   SizeOfWidth({super.key,required this.widths});
  dynamic widths;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: widths,
    );
  }
}
