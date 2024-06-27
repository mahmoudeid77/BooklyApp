
import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5,),
      height: 200,
      width: 150,
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(
      image: AssetImage(AssetsData.bookImage),
      fit: BoxFit.cover,
    ),
  ),
);
  }
}