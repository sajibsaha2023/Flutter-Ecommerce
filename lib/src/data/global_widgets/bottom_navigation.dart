import 'package:ecommerce/src/modules/account/account_view.dart';
import 'package:ecommerce/src/modules/home/home_view.dart';
import 'package:ecommerce/src/modules/wishlist/wishlist_view.dart';
import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  static const pages = [HomeView(), AccountView(),WishListView(), AccountView(),];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_home.png'), label: '' ),
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_item.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_search.png'), label: ''),
          BottomNavigationBarItem(icon: Image.asset('assets/images/b_user.png'), label: '')
        ],
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: pages[currentIndex],
    );
  }
}
