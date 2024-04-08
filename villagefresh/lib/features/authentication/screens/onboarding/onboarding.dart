import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:villagefresh/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:villagefresh/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:villagefresh/features/authentication/screens/onboarding/widgets/onboarding_next_button.dart';
import 'package:villagefresh/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:villagefresh/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:villagefresh/utils/constants/colors.dart';
import 'package:villagefresh/utils/constants/image_strings.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:villagefresh/utils/constants/sizes.dart';
import 'package:villagefresh/utils/constants/text_strings.dart';
import 'package:villagefresh/utils/device/device_utility.dart';
import 'package:villagefresh/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollble pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: AppImages.onBoardingImage1,
                title: AppTexts.onBoardingTitle1,
                subTitle: AppTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage2,
                title: AppTexts.onBoardingTitle2,
                subTitle: AppTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: AppImages.onBoardingImage3,
                title: AppTexts.onBoardingTitle3,
                subTitle: AppTexts.onBoardingSubTitle3,
              )
            ],
          ),

          //Skip Button
          const OnBoardingSkip(),

          //Dot Navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          //Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}


