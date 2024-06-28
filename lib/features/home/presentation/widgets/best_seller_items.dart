import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';
import 'package:flutter_application_1/features/home/presentation/views/book_details.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/evaluation_row.dart';
import 'package:get/get.dart';

class BestSellerItem extends StatelessWidget {
  const BestSellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(BookDetails());
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Container(
              width: 100,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
               image: DecorationImage(image: AssetImage(AssetsData.bookImage), fit: BoxFit.cover),
                ),
            ),
            SizedBox(width: 20,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Harry Potter and the Deathly Hallows',style: AppStyles.textStyle18,maxLines: null,overflow: TextOverflow.visible,),
                  Text('J.K. Rowling',style: AppStyles.textStyle14,),
                  EvaluationRow()
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
}