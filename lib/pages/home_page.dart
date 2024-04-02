// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:leadquest/components/Celebration_card.dart';
import 'package:leadquest/components/Coupan_card.dart';
import 'package:leadquest/components/performance_card.dart';
import 'package:leadquest/components/poster.dart';
import 'package:leadquest/models/celebration.dart';
import 'package:leadquest/models/performance.dart';
import 'package:leadquest/models/poster_model.dart';
import 'package:leadquest/models/shop_and_earn.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(12)),
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  Poster poster = Poster(ImagePath: 'lib/Images/Image2.png');
                  return PosterBanner(poster: poster);
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Spin &',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  fontStyle: FontStyle.italic),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text(
                                'Win',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    fontStyle: FontStyle.italic),
                              ),
                            )
                          ],
                        ),
                      ),
                      Image.asset('lib/Images/spinner.png')
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Padding(
          // padding: const EdgeInsets.only(top: 10.0),

          Container(
            height: 170,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                Performance performance = Performance(
                    name1: 'Lalit Kondekar',
                    name2: 'Lokesh Burade',
                    name3: 'Shreyash J',
                    ImagePath1: 'lib/Images/person1.png',
                    ImagePath2: 'lib/Images/person2.png',
                    ImagePath3: 'lib/Images/person3.png');

                return PerformanceCard(performance: performance);
              },
            ),
          ),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0, bottom: 10, top: 20),
                child: Text(
                  "Shop & earn",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 150,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) {
                    Shop shop = Shop(ImagePath: 'lib/Images/amazon.png');
                    return Coupan(shop: shop);
                  },
                ),
              ),
            ],
          ),
          // )

          Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 20),
            child: Container(
              height: 170,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, index) {
                  Celebration celebration = Celebration(
                      ImagePath: 'lib/Images/person3.png', name: 'Shreyash J');
                  return CelebrationCard(celebration: celebration);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
