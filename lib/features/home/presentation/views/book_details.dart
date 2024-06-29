import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/book_cover.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/books_action.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custom_appbar_book_details.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/featured_book_list_view.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/list_of_best_seller_items_view.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/second_evaluation_row.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomAppbarBookDetails(),
                      BookCover(),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Soul',
                        style: AppStyles.textStyle30,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'by Markus Zustin',
                        style: AppStyles.textStyle20,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Center(child: SecondEvaluationRow()),
                      SizedBox(
                        height: 20,
                      ),
                      BooksAction(),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              'You can also like',
                              style: AppStyles.textStyle20,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      // ListOfBestSellerItemsView()
                    ],
                  ),
                ),
                SliverToBoxAdapter(
                  child: SizedBox(
                      height: 170, child: FeaturedBooksListView(flag: false)),
                )
              ],
            )),
      ),
    );
  }
}
