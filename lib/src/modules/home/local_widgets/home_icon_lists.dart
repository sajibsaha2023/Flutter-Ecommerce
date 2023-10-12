import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/data/global_widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class IconLists extends StatefulWidget {
  const IconLists({super.key});

  @override
  State<IconLists> createState() => _IconListsState();
}

class _IconListsState extends State<IconLists> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return SizedBox(
      height: 105.h,
      width: MediaQuery.sizeOf(context).width,
      //color: Colors.amber,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: (){
              // itemProvider.saveToSharePreference();
            },
            child: MenuBox(
              menuIcon: 'assets/images/love.png',
              menuTitle: 'Favorite ',
            ),
          ),
          InkWell(
            onTap: (){
              itemProvider.getToSharePreference();
            },
            child: MenuBox(
              menuIcon: 'assets/images/cheap.png',
              menuTitle: 'Cheap ',
            ),
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
