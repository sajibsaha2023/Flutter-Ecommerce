import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:ecommerce/src/data/global_widgets/size_of_width.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class seeAllPromos extends StatelessWidget {
  seeAllPromos({super.key,required this.allPromos});


  dynamic allPromos;


  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return Container(
        margin: EdgeInsets.only(
          bottom: 15.h,
        ),
        height: 200.h,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Padding(
          padding: EdgeInsets.all(10.w),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100.w,
                      width: 100.w,
                      child: Stack(
                        clipBehavior: Clip.none,
                        alignment: Alignment.center,
                        children: [
                          Container(
                            height: 100.w,
                            width: 100.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                image: const DecorationImage(
                                    image: AssetImage(
                                      "assets/images/dish_one.png",
                                    ),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                            bottom: -15.w,
                            child: Container(
                              alignment: Alignment.center,
                              height: 38.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.white,
                                    width: 1.5,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(10.r)),
                                  color: Color(0xffEDA345)),
                              child: Text("5 Left"),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizeOfWidth(widths: 15.w),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Fruit salad mix",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                        SizeOfHeight(heights: 10.h),
                        Row(
                          children: [
                            Text(
                              "18.500",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(color: Colors.black),
                            ),
                            SizeOfWidth(widths: 20.w),
                            Text(
                              '22.500',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                color: Colors.black,
                                decoration: TextDecoration.lineThrough,
                              ),
                            ),
                          ],
                        ),
                        SizeOfHeight(heights: 15.h),
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              height: 20.w,
                              width: 20.w,
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                  borderRadius:
                                  BorderRadius.circular(20.w / 2)),
                              child: Text("%"),
                            ),
                            SizeOfWidth(widths: 10.w),
                            Text(
                              "Delivery discount up to 3k",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: Color(0xff7E7E7E)),
                            ),
                          ],
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        // itemProvider.removeToWishlist(itemProvider.wishlist[singleItem]);
                      },
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.deepOrange,
                      )
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(color: Color(0xffF8F5F2)),
                    child: Row(
                      children: [
                        Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffE1E1E1),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: IconButton(
                              onPressed: () {
                                itemProvider.incrementPromo(allPromos,context);
                              }, icon: const Icon(Icons.add)),
                        ),
                        SizeOfWidth(widths: 10.w),
                        Text(
                          "${itemProvider.itemList[allPromos]["count"]}",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                        SizeOfWidth(widths: 10.w),
                        Container(
                          height: 35.w,
                          width: 35.w,
                          decoration: BoxDecoration(
                              color: const Color(0xffE84C4F),
                              borderRadius: BorderRadius.circular(10.r)),
                          child: IconButton(
                            onPressed: () {
                              itemProvider.decrementPromo(allPromos);
                            },
                            icon: const Icon(Icons.remove),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10.w),
                    height: 35.w,
                    decoration: BoxDecoration(
                      color: const Color(0xffE84C4F),
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Text("Add to Cart"),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
