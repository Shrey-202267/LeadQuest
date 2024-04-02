// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:leadquest/components/reward_tilr.dart';
import 'package:leadquest/models/rewards.dart';

class RewardPage extends StatelessWidget {
  const RewardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20))),
          foregroundColor: Colors.white,
          backgroundColor: Color(0xFF461d9f),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 25.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('lib/Images/coin.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          '99',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rewards for Leads:",
              style: TextStyle(color: Colors.grey[600], fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: 380,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Rewards',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Text(
                      'Leads',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                Reward reward = Reward(
                    ImagePath: 'lib/Images/ipad.png',
                    productName: 'Ipad/Iphone',
                    quantity: '100');

                return RewardTile(reward: reward);
              },
            ))
          ],
        ),
      ),
    );
  }
}
