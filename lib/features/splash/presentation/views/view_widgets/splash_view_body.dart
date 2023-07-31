import 'package:bookbox/constants.dart';
import 'package:bookbox/core/utils/assets.dart';
import 'package:bookbox/features/home/presentation/views/home_view.dart';
import 'package:bookbox/features/splash/presentation/views/view_widgets/slider_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Offset> slidertext;
  @override
  void initState() {
    super.initState();
    initslidinganimation();
    navigateToHome();
  }



  @override
  void dispose() {
    super.dispose();
    controller.dispose(); //to avoid memory leak
  }

  @override
  Widget build(BuildContext context) {
    return (Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(
          AssetsBookData.splash,
          //TODOneed to remove this height and width
          // height: 350,
          // width: 350,
        ),
        //TODOcheck the animation when run on mobile
        SliderText(slidertext: slidertext),
      ],
    ));
  }

  void initslidinganimation() {
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidertext = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(controller);
    controller.forward();
    // slidertext.addListener(() {
    //   setState(() {

    //   });
    // });
  }

    void navigateToHome() {
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(()=> const HomeView(),transition:Transition.fade,duration: kTransitionDuration);
    });
  }
}
