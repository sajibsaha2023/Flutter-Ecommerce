import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import '../../../controller/home_controller.dart';
import '../../../data/utils/custom_color.dart';
import '../../all_promos/local_widgets/single_promo_content.dart';
class MyBucket extends StatefulWidget {

  MyBucket({ super.key});

  @override
  State<MyBucket> createState() => _MyBucketState();
}

class _MyBucketState extends State<MyBucket> {
  @override
  Widget build(BuildContext context) {
    final itemList = Provider.of<HomeController>(context);
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) =>  SinglePromoWidget(singleItem: index),);
  }
}
