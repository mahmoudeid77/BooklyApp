import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/utilis/styles.dart';

class SecondEvaluationRow extends StatelessWidget {
  const SecondEvaluationRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      
        const Icon(Icons.star,size: 20,color: Colors.yellow,),
        Text('4.5',style: AppStyles.textStyle18,),
        
        
        const SizedBox(width: 5,),
        Text('(250)',style: AppStyles.textStyle18,),
      ],
    );
  }
}