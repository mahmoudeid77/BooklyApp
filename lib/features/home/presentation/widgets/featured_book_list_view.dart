import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/featured_list_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key, required this.flag});
  final bool flag;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return flag
              ? FeaturedListItem(
                  width: 150,
                  height: 200,
                )
              : FeaturedListItem(
                  width: 100,
                  height: 120,
                );
        });
  }
}
