import 'package:flutter/material.dart';

import '../../modules/home/views/promo_details.dart';

class DishItem extends StatelessWidget {
  String dishImage,
      dishTitle,
      dishSubTitle,
      dishPrice,
      dishLeft,
      dishRegularPrice;
  bool favorite;
    dynamic onPress ;
  DishItem(
      {super.key,
        required this.favorite,
        required this.dishImage,
        required this.dishTitle,
        required this.dishSubTitle,
        required this.dishPrice,
        required this.dishLeft,
        required this.dishRegularPrice,
        required this.onPress
      });

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.center, children: [
      Container(
        padding: const EdgeInsets.all(8),
        height: MediaQuery.sizeOf(context).height,
        width: 325,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  dishImage,
                ),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
            color: Colors.red),
      ),
      Positioned(
        top: 10,
        right: 10,
        child: InkWell(
          onTap: onPress,
          child: Container(
            alignment: Alignment.center,
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
            child: favorite ? Icon( Icons.favorite,color: Colors.deepOrange,) : Icon(Icons.favorite_border,),
          ),
        ),
      ),
      Positioned(
        bottom: 15,
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_)=>const PromoDetails()));
          },
          child: Container(
            padding: const EdgeInsets.all(16),
            height: 125,
            width: 290,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      dishTitle,
                      style: const TextStyle(
                        color: Color(0xff3E4462),
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      dishSubTitle,
                      style:
                      const TextStyle(color: Color(0xff7E7E7E), fontSize: 18),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          dishPrice,
                          style: const TextStyle(
                              color: Color(0xff7E7E7E), fontSize: 16),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          dishRegularPrice,
                          style: const TextStyle(
                              color: Color(0xff7E7E7E),
                              fontSize: 14,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ],
                    )
                  ],
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 50,
                    decoration: BoxDecoration(
                        color: const Color(0xffEDA345),
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        '$dishLeft Left',
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
