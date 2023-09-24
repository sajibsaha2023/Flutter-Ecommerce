import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class PromoDetailsTopView extends StatefulWidget {
  const PromoDetailsTopView({super.key});

  @override
  State<PromoDetailsTopView> createState() => _PromoDetailsTopViewState();
}

class _PromoDetailsTopViewState extends State<PromoDetailsTopView> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return  Stack(
      clipBehavior:Clip.none ,
      children: [
        SizedBox(
          height: 200.h,
          width: MediaQuery.sizeOf(context).width,
          child: Image.asset("assets/images/dish_two.png",height: 250.h,width: MediaQuery.sizeOf(context).width,fit: BoxFit.fill,),
        ),
        Positioned(
          top: 30.h,
          left: 10.w,
          child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.w/2)
              ),
              child: Center(child: Image.asset("assets/images/backicon.png",height: 20.w,width:20.w,)),
            ),
          ),),
        Positioned(
          top: 30.h,
          right: 10.w,
          child:  InkWell(
            onTap: (){
              itemProvider.setIsFavorite();
            },
            child: Container(
              height: 30.w,
              width: 30.w,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50.w/2)
              ),
              child: Center(child:itemProvider.isFavorite == true
                  ? Icon(Icons.favorite_border):
              Icon(Icons.favorite,color:Colors.deepOrange ,)),
            ),
          ),),
        Positioned(
          top: 140.h,
          child:  Container(
            height:150.h,
            margin: EdgeInsets.only(left: 20.w),
            width: MediaQuery.sizeOf(context).width-40.w,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.w)
            ),
            child:Padding(
              padding: EdgeInsets.all(10.w),
              child: Column(
                children: [
                  Text("Delics Fruit Salad",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black
                  ),),
                  SizeOfHeight(heights: 10.h),
                  Text("Jl. Jaya katwang no 4, Ngasem",style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Colors.black
                  ),),
                  SizeOfHeight(heights: 10.h),
                  RichText(text:  TextSpan(
                    text: 'Open ',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.black
                    ),
                    children: [
                      TextSpan(
                          text: '8 am - 8 am', style: Theme.of(context).textTheme.bodySmall!.copyWith()),
                    ],

                  ),),
                  SizeOfHeight(heights: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/images/location.png",height: 25.w,width: 25.w,),
                          Text("Dhaka",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/location.png",height: 25.w,width: 25.w,),
                          Text("5.5",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),)
                        ],
                      ),
                      Row(
                        children: [
                          Image.asset("assets/images/location.png",height: 25.w,width: 25.w,),
                          Text("Verified",style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: Colors.black),)
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),),
      ],

    );
  }
}
