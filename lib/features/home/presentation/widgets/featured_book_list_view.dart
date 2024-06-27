

import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/featured_list_item.dart';

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