import 'package:flutter/widgets.dart';

class HomeController extends ChangeNotifier{


  dynamic itemList = [
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5'
    },
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '190',
      'item_left' : '5'
    },
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_one.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5'
    },
    {
      'id' : 1,
      'item_pic' : 'assets/images/dish_two.png',
      'item_name' : 'Dish Name',
      'item_subname' : 'Dish Subtitle',
      'special_price' : '120',
      'regular_price' : '180',
      'item_left' : '5'
    }
  ];







  bool _isFavorite = false;
  bool get isFavorite => _isFavorite;

  void setIsFavorite(){
    _isFavorite = !_isFavorite ;
    notifyListeners();
  }



}