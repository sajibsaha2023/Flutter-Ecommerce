import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{


  List itemList = [
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'isFavorite':false
    },
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '190',
      'item_left' : '5',
      'isFavorite':false
    },
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'isFavorite':false
    },
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5',
      'isFavorite':false
    }
  ];











  List get itemLists => itemList;

  void setIsFavorite(index){

    if(itemList[index]['isFavorite']){
      itemList[index]['isFavorite'] = false;
    }else{
      itemList[index]['isFavorite'] = true;
    }

    // bool fav = itemList[index]['isFavorite'];
    // if(itemList[index]['isFavorite']){
    //   itemList[index]['isFavorite'].add();
    // }else{
    //   itemList[index]['isFavorite'].add();
    // }
    // itemList.asMap().forEach((ind, value) =>{
    //   if(index == ind){
    //
    //   }
    // });
    notifyListeners();
  }



}