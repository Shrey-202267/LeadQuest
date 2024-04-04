// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:leadquest/models/rewards.dart';

class RewardTile extends StatelessWidget {
  Reward reward;
  RewardTile({super.key, required this.reward});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(top: ),
      width: 380,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Divider(
            color: Colors.grey[300],
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset(
                        reward.ImagePath,
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        reward.productName,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.person),
                    Text(reward.quantity,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15))
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
