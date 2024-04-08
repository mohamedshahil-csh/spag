import 'package:flutter/material.dart';
import 'package:villagefresh/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:villagefresh/utils/constants/colors.dart';
import 'package:villagefresh/utils/constants/sizes.dart';
import 'package:villagefresh/utils/device/device_utility.dart';
import 'package:villagefresh/utils/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Positioned(
      right: AppSizes.defaultSpace,
      bottom: AppDeviceUtils.getBottonNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: dark ? AppColors.primary : Colors.black),
        child: const Icon(Icons.arrow_circle_right),
      ),
    );
  }
}