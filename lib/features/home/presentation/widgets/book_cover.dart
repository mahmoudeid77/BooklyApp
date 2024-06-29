import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';

class BookCover extends StatelessWidget {
  const BookCover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        image: DecorationImage(
            image: AssetImage(AssetsData.bookImage), fit: BoxFit.cover),
      ),
    );
  }
}
