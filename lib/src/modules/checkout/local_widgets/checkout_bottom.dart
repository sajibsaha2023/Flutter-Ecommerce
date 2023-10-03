import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckOut_Bottom extends StatefulWidget {
  const CheckOut_Bottom({super.key});

  @override
  State<CheckOut_Bottom> createState() => _CheckOut_BottomState();
}

class _CheckOut_BottomState extends State<CheckOut_Bottom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Center(
        child: Container(
          height: 90,
          width: double.infinity,
          color: Colors.white,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                color: Colors.red,
                child: ListTile(
                  title: Text("Place Order", style: TextStyle(color: Colors.white, fontSize: 20),),
                  trailing: Text("18,500", style: TextStyle(color: Colors.white, fontSize: 20),),
                ),
              ),
            ),
          ),

        ),
      ),
    );
  }
}
