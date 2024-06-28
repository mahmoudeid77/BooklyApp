import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/book_cover.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custom_appbar_book_details.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/second_evaluation_row.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomAppbarBookDetails(),
            BookCover(),
            SizedBox(height: 20,),
            Text('Soul',style: AppStyles.textStyle30,),
            SizedBox(height: 5,),
            Text('by Markus Zustin',style: AppStyles.textStyle20,),
            SizedBox(height: 20,),
            Center(child: SecondEvaluationRow())
          ],
        ),
      ),
    );
  }
}

