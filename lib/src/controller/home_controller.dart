import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
class HomeController extends ChangeNotifier {

  List wishlist = [];

  Future saveToSharePreference(item)async{
    // Obtain shared preferences.
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = jsonEncode(item);
    prefs.setString("user", token);
  }

  Future getToSharePreference()async{
     // Obtain shared preferences.
     final SharedPreferences prefs = await SharedPreferences.getInstance();
     var myData = prefs.getString('user');
     dynamic token = jsonDecode(myData!);

      // print("token user data");
      // print(token);

   }


  List itemList = [
    {
      'id': 1,
      'item_pic': 'assets/images/dish_one.png',
      'item_name': 'Dish Name',
      'item_subname': 'Dish Subtitle',
      'special_price': '120',
      'regular_price': '180',
      'item_left': '5',
      'isFavorite': false,
      "count": 1,
    },
    {
      'id': 2,
      'item_pic': 'assets/images/dish_two.png',
      'item_name': 'Dish Name',
      'item_subname': 'Dish Subtitle',
      'special_price': '120',
      'regular_price': '190',
      'item_left': '5',
      'isFavorite': false,
      "count": 1,
    },
    {
      'id': 3,
      'item_pic': 'assets/images/dish_one.png',
      'item_name': 'Dish Name',
      'item_subname': 'Dish Subtitle',
      'special_price': '120',
      'regular_price': '180',
      'item_left': '5',
      'isFavorite': false,
      "count": 1,
    },
    {
      'id': 4,
      'item_pic': 'assets/images/dish_two.png',
      'item_name': 'Dish Name',
      'item_subname': 'Dish Subtitle',
      'special_price': '120',
      'regular_price': '180',
      'item_left': '5',
      'isFavorite': false,
      "count": 1,
    }
  ];


  List get wishlists => wishlist;

  void setToWishlistItem(item) {
    if (item["isFavorite"]) {
      wishlist.add(item);
    } else {
      wishlist.remove(item);
    }
    print(wishlist.length);
    print("wishlist");
    notifyListeners();
  }

  void removeToWishlist(item) {
    itemList.asMap().forEach((ind, value) => {
          if (item["id"] == value["id"])
            {wishlist.remove(item), itemList[ind]['isFavorite'] = false}
        });

    // print(item);
    // itemList[index]['isFavorite'] = false;
    // setToWishlistItem(itemList[index]);
    notifyListeners();
  }

  List get itemLists => itemList;

  void setIsFavorite(index) {
    if (itemList[index]['isFavorite']) {
      itemList[index]['isFavorite'] = false;
      setToWishlistItem(itemList[index]);
    } else {
      itemList[index]['isFavorite'] = true;
      setToWishlistItem(itemList[index]);
    }

    // bool fav = itemList[index]['isFavorite'];
    // if(itemList[index]['isFavorite']){
    //   itemList[index]['isFavorite'].add();
    // }else{
    //   itemList[index]['isFavorite'].add();
    // }

    notifyListeners();
  }

  void incrementPromo(index,context) {
    var itemProvider = Provider.of<HomeController>(context);

    itemList[index]['count'] =  itemList[index]['count']+1;
    notifyListeners();
  }

  void decrementPromo(index) {
    itemList[index]['count'] == 1 ? 1 : itemList[index]['count']--;

    notifyListeners();
  }
}
