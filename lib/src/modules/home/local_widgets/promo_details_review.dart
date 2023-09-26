import 'package:ecommerce/src/data/global_widgets/size_of_height.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PromoDetailsReview extends StatefulWidget {
  const PromoDetailsReview({super.key});

  @override
  State<PromoDetailsReview> createState() => _PromoDetailsReviewState();
}

class _PromoDetailsReviewState extends State<PromoDetailsReview> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 15.w, right: 15.w,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              SizeOfHeight(heights: 15.h),
              RichText(
                text: TextSpan(
                  text: '5.5',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25.sp),
                  children: [
                    TextSpan(
                        text: '/',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.black, fontSize: 17.sp)),
                    TextSpan(
                        text: '5',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(color: Colors.black, fontSize: 17.sp)),
                  ],
                ),
              ),
              SizeOfHeight(heights: 10.h),
              Text(
                "Total 500 Review",
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black),
              ),
              RatingBarIndicator(
                rating: 5.0,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                itemCount: 5,
                itemSize: 20.0,
                direction: Axis.horizontal,
              ),
            ],
          ),
          Container(
            height: 200,
            width: 2,
            decoration: BoxDecoration(color: Colors.black26),
          ),

          SizedBox(
            height: 250.h,
            width: 200,
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(bottom: 20.h),
                    child: Row(
                      children: [
                        Text(
                          "${index+1} star",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                        RatingBarIndicator(
                          rating: 5.0,
                          itemBuilder: (context, index) => Icon(
                            Icons.star,
                            color: Colors.orange,
                          ),
                          itemCount: 5,
                          itemSize: 20.0,
                          direction: Axis.horizontal,
                        ),
                        Text(
                          "(20)",
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(color: Colors.black),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
