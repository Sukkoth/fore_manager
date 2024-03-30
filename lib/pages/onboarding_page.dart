import 'package:flutter/material.dart';
import 'package:fore_manager/components/onboarding/first.dart';
import 'package:fore_manager/components/onboarding/second.dart';
import 'package:fore_manager/components/onboarding/third.dart';
import 'package:fore_manager/constants.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController(initialPage: 0);
  void changePage(int changeTo) {
    _pageController.jumpToPage(changeTo);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.secondaryLightColor,
      body: Stack(children: [
        PageView(
          controller: _pageController,
          children: [
            FirstOnboarding(changePage: changePage),
            SecondOnboarding(changePage: changePage),
            ThirdOnboarding(changePage: changePage),
          ],
        ),
        Container(
          alignment: const Alignment(0, 0.38),
          child: SmoothPageIndicator(
            controller: _pageController,
            count: 3,
            effect: const WormEffect(
                activeDotColor: MyColors.primaryColor,
                dotHeight: 10,
                dotWidth: 10),
          ),
        )
      ]),
    );
  }
}
