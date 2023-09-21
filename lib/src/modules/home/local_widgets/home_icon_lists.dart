import 'package:ecommerce/src/data/global_widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class IconLists extends StatefulWidget {
  const IconLists({super.key});

  @override
  State<IconLists> createState() => _IconListsState();
}

class _IconListsState extends State<IconLists> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.h,
      width: MediaQuery.sizeOf(context).width,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MenuBox(
            menuIcon: 'assets/images/love.png',
            menuTitle: 'Favorite',
          ),
          MenuBox(
            menuIcon: 'assets/images/cheap.png',
            menuTitle: 'Cheap',
          ),
          MenuBox(
            menuIcon: 'assets/images/trend.png',
            menuTitle: 'Trend',
          ),
          MenuBox(
            menuIcon: 'assets/images/more.png',
            menuTitle: 'More',
          ),
        ],
      ),
    );
  }
}
