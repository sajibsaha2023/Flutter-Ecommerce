import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../data/utils/custom_color.dart';

class CheckOutAppBar extends StatefulWidget {
  const CheckOutAppBar({super.key});

  Size get preferredSize => Size.fromHeight(105);
  @override
  State<CheckOutAppBar> createState() => _CheckOutAppBarState();
}

class _CheckOutAppBarState extends State<CheckOutAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 105,
      centerTitle: true,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios, color: CustomColors.orangeColor,),
        onPressed: () {

        },
      ),
      title: Text(
        'Checkout',
        style: TextStyle(color: CustomColors.headingTextColor, fontSize: 24.sp, fontWeight: FontWeight.normal),
      ),
    );
  }
}