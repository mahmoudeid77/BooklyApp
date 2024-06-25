import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          Image.asset(AssetsData.logo,height: 16,),
          Spacer()  ,
          IconButton(onPressed: (){}, icon: Icon(Icons.search),),
        
        ],
      ),
    );
  }
}