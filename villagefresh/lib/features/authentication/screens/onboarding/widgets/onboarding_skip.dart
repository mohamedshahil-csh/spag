import 'package:flutter/material.dart';
import 'package:villagefresh/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:villagefresh/utils/constants/sizes.dart';
import 'package:villagefresh/utils/device/device_utility.dart';

class OnBoardingSkip extends StatelessWidget {

  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDeviceUtils.getAppBarHeight(),
      right: AppSizes.defaultSpace,
      child: TextButton(onPressed: ()=> OnBoardingController.instance.skipPage(), child: const Text('skip')),
    );
  }
}