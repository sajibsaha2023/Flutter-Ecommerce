import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:ecommerce/src/modules/all_promos/view/all_promo_view.dart';
import 'package:ecommerce/src/modules/home/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PlaceConfirmOrder extends StatefulWidget {
  const PlaceConfirmOrder({super.key});

  @override
  State<PlaceConfirmOrder> createState() => _PlaceConfirmOrderState();
}

class _PlaceConfirmOrderState extends State<PlaceConfirmOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.center,
                  child: SizedBox(
                      height: 300.w,
                      width: MediaQuery.sizeOf(context).width,
                      child: Image.asset("assets/images/confirm_order.png"),),),
              SizeOfHeight(heights: 10.h),
              Text("Your order is confirmed!",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20.sp
              ),),
              SizeOfHeight(heights: 20.h),
              Text("we'll deliver your order immediately,make sure your order put on the doorstep",textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Colors.black
              ),),
              SizeOfHeight(heights: 20.h),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>const HomeView()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20.w,right: 20.w),
                  alignment: Alignment.center,
                  height: 50,
                  width: MediaQuery.sizeOf(context).width,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(15.r)
                  ),
                  child: Text("Continue Shopping",style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.sp
                  ),),
                ),
              )
            ],
        ),
      ),
    );
  }
}
