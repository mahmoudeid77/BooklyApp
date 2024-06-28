import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/home/presentation/widgets/custom_appbar_book_details.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppbarBookDetails()
          ],
        ),
      ),
    );
  }
}

