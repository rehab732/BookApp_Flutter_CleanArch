
import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8),
      child:  Row(
        children: [
        
          Expanded(
              child: CustomButton(
                text: '199.9&',
            backgroundColor: Colors.white,
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
    
          ),
          ),
            Expanded(
              child: CustomButton(
                text: 'Free Review',
            backgroundColor: Color(0xffEF8262),
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12), bottomRight: Radius.circular(12)),
    
          ),
          ),
        ],
      ),
    );
  }
}
