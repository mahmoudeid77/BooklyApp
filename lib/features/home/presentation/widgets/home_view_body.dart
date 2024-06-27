import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/best_seller_items.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/customAppBar.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/featured_book_list_view.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/featured_list_item.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/list_of_best_seller_items_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 10,),
                SizedBox(
                  height: 250,
                  child: FeaturedBooksListView()),
                  SizedBox(height: 30,),
                 Text('Best Seller',style: AppStyles.textStyle20,),
                 SizedBox(height: 20,),

              ],
            ),
          ),

        ),
        SliverToBoxAdapter(
          child: ListOfBestSellerItemsView(),
        )
        //  const SliverFillRemaining(
        //   child: Padding(
        //     padding: EdgeInsets.symmetric(horizontal: 30),
        //     child:ListOfBestSellerItemsView(),
        //   ),
        // ),
      ],
    ) ;
  }
}


