import 'package:flutter/material.dart';

class TitleWithSeeAll extends StatelessWidget {
   TitleWithSeeAll({super.key,this.title,this.onPress,this.buttonText});

  String? title ;
  dynamic onPress;
  String? buttonText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          "$title",
          style: TextStyle(fontSize: 23, color: Color(0xff3E4462)),
        ),
        TextButton(
            onPressed: onPress,
            child: Text(
              '$buttonText',
              style: TextStyle(
                  color: const Color(0xff84C4F).withOpacity(.9)),
            ))
      ],
    );
  }
}
