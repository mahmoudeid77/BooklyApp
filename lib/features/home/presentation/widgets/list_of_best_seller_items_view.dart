import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/best_seller_items.dart';

class ListOfBestSellerItemsView extends StatelessWidget {
  const ListOfBestSellerItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: 12,
        itemBuilder: (context,index){
        
        return BestSellerItem();
      }),
    );
  }
}