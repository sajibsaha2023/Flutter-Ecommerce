import 'package:ecommerce/src/controller/home_controller.dart';
import 'package:ecommerce/src/modules/all_promos/local_widgets/see_all_promo.dart';
import 'package:ecommerce/src/modules/all_promos/local_widgets/single_promo_content.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AllPromoView extends StatefulWidget {
  const AllPromoView({super.key});

  @override
  State<AllPromoView> createState() => _AllPromoViewState();
}

class _AllPromoViewState extends State<AllPromoView> {
  @override
  Widget build(BuildContext context) {
    var itemProvider = Provider.of<HomeController>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffF8F5F2),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.deepOrange,
          ),
        ),
        elevation: 0,
        title: Text(
          "All Promos",
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.bold, color: Colors.black),
        ),

      ),
      body: ListView.builder(
          itemCount: itemProvider.itemList.length,
          itemBuilder: (context, index) =>  seeAllPromos(allPromos: index,))
    );
  }
}
