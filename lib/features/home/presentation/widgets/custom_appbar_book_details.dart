import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/views/home_view.dart';
import 'package:get/get.dart';

class CustomAppbarBookDetails extends StatelessWidget {
  const CustomAppbarBookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: (){
          Get.off(HomeView());
        },
         icon: Icon(Icons.arrow_back,size: 30,),),

        Spacer(),

        IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_checkout_outlined ,size: 30,))
      ],
    );
  }
}