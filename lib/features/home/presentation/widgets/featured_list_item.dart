import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';

class FeaturedListItem extends StatelessWidget {
  const FeaturedListItem(
      {super.key, required this.width, required this.height});
  final double width, height;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 5,
      ),
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(AssetsData.bookImage),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
