
import 'package:flutter/material.dart';
class SliderText extends StatelessWidget {
  const SliderText({
    super.key,
    required this.slidertext,
  });

  final Animation<Offset> slidertext;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: slidertext,
        builder: (context, _) {
          return SlideTransition(
            position: slidertext,
            child: const Text(
              'Free Books, Rich Mind ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          );
        });
  }
}
