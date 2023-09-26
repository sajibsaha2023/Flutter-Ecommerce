import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoDetailsInfo extends StatefulWidget {
  const PromoDetailsInfo({super.key});

  @override
  State<PromoDetailsInfo> createState() => _PromoDetailsInfoState();
}

class _PromoDetailsInfoState extends State<PromoDetailsInfo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.h),
      child: Column(
        children: [
          SizeOfHeight(heights: 15.h),
          Flexible(
            child: Text("Food is one of the basic necessities of life. Food contains nutrients—substances essential for the growth, repair, and maintenance of body tissues and for the regulation of vital processes. Nutrients provide the energy our bodies need to function. The energy in food is measured in units called",style: Theme.of(context).textTheme.bodySmall!.copyWith(
                height: 2,
              color: Colors.black
            ),),
          )
        ],
      ),
    );
  }
}
