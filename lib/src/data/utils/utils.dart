import 'package:flutter/material.dart';
class Utils{

  static void alert(title,content){
    AlertDialog(
      title: Text(
        '$title',
        textScaleFactor: 5,
      ),
      content: SingleChildScrollView( // won't be scrollable
        child: Text('$content', textScaleFactor: 5),
      ),
      actions: <Widget>[
        TextButton(child: Text('cancel'), onPressed: () {}),
        TextButton(child: Text('ok'), onPressed: () {}),
      ],
    );
  }






}