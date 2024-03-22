import 'package:bookme/constants.dart';
import 'package:bookme/core/utils/assets.dart';
import 'package:bookme/features/home/presentation/views/homescreen.dart';
import 'package:bookme/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidinganimation;

  @override
  void initState() {
    InitSlideAnimation();
    NavigateToHome();
  }

  @override
  void dispose() {
    // ay controller lazm ndirolo dispose
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        SlidingText(slidinganimation: slidinganimation),
      ],
    );
  }

  void InitSlideAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));
    slidinganimation =
        Tween<Offset>(begin: const Offset(0, 3), end: Offset.zero)
            .animate(animationController);
    animationController.forward();
  }

  void NavigateToHome() {
    Future.delayed(
      Duration(seconds: 1),
      () => Get.to(Homescreen(),
          transition: Transition.fade, duration: kTranstionduration),
    );
    super.initState();
  }
}
