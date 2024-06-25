import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/assets.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/customAppBar.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/featured_list_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                 Text('Best Seller',style: AppStyles.titleMedium,)
          ],
        ),
      ),
    );
  }
}


class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
      return const FeaturedListItem();
    });
  }
}