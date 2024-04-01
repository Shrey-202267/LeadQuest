import 'package:flutter/material.dart';
import 'package:leadquest/models/shop_and_earn.dart';

class Coupan extends StatelessWidget {
  Shop shop;
  Coupan({super.key, required this.shop});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: Image.asset(shop.ImagePath),
    );
  }
}
