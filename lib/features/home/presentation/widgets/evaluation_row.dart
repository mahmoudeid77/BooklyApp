import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';

class EvaluationRow extends StatelessWidget {
  const EvaluationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '19.94\$',
          style: AppStyles.textStyle18,
        ),
        Spacer(),
        const Icon(
          Icons.star,
          size: 20,
          color: Colors.yellow,
        ),
        Text(
          '4.5',
          style: AppStyles.textStyle18,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(250)',
          style: AppStyles.textStyle18,
        ),
      ],
    );
  }
}
