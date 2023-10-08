import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/modules/all_promos/local_widgets/single_promo_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WishListView extends StatefulWidget {
  const WishListView({super.key});

  @override
  State<WishListView> createState() => _WishListViewState();
}

class _WishListViewState extends State<WishListView> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffF8F5F2),
          leading: InkWell(
            onTap: (){
              // Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.deepOrange,
            ),
          ),
          elevation: 0,
          title: Text(
            "Wishlist",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
          ),

        ),
        body: ListView.builder(
            itemCount: itemProvider.wishlist.length,
            itemBuilder: (context, index) =>  SinglePromoWidget(singleItem:index
            ))
    );
  }
}
