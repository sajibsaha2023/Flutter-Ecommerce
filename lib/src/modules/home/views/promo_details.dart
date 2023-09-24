import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:ecommerce/src/modules/home/local_widgets/promo_details_top_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PromoDetails extends StatefulWidget {
  const PromoDetails({super.key});

  @override
  State<PromoDetails> createState() => _PromoDetailsState();
}

class _PromoDetailsState extends State<PromoDetails> {
  @override
  Widget build(BuildContext context) {

    return  const Scaffold(
      body:SingleChildScrollView(
        child:Column(
          children: [
            PromoDetailsTopView()
          ],
        ) ,
      ) ,
    );
  }
}
