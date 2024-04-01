import 'package:flutter/material.dart';
import 'package:leadquest/models/poster_model.dart';

class PosterBanner extends StatelessWidget {
  Poster poster;
  PosterBanner({super.key, required this.poster});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(left: 25),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(poster.ImagePath)),
    );
  }
}
