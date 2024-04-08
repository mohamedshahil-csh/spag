import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:villagefresh/common/styles/spacing_styles.dart";
import "package:villagefresh/utils/constants/colors.dart";
import "package:villagefresh/utils/constants/image_strings.dart";
import "package:villagefresh/utils/constants/sizes.dart";
import "package:villagefresh/utils/constants/text_strings.dart";
import "package:villagefresh/utils/helpers/helper_functions.dart";

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = AppHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: AppSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              //logo
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? AppImages.lightAppLogo : AppImages.darkAppLogo),
                  ),
                  Text(AppTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(
                    height: AppSizes.sm,
                  ),
                  Text(AppTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                ],
              ),
              Form(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: AppSizes.spaceBtwSections),
                child: Column(
                  children: [
                    //Email
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.fork_right),
                        labelText: AppTexts.email,
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.sm,
                    ),
                    //password
                    TextFormField(
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        labelText: AppTexts.password,
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwInputFields / 2,
                    ),

                    //Remember me And Forget Password
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //remeber me
                        Row(
                          children: [
                            Checkbox(value: true, onChanged: (value) {}),
                            const Text(AppTexts.rememberMe),
                          ],
                        ),
                        //forget password
                        TextButton(
                            onPressed: () {},
                            child: const Text(AppTexts.forgetPassword)),
                      ],
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwSections,
                    ),

                    //sign in button
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            onPressed: () {},
                            child: const Text(AppTexts.signIn))),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),

                    //Create Account Button
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {},
                        child: Text(
                          AppTexts.createAccount,
                          style: TextStyle(
                            color: dark ? AppColors.light : AppColors.dark,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                  ],
                ),
              )),
              //Divider
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: dark ? AppColors.darkGrey : AppColors.grey,
                    thickness: 0.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(
                    AppTexts.orSignInWith.capitalize!,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  Flexible(
                      child: Divider(
                    color: dark ? AppColors.darkGrey : AppColors.grey,
                    thickness: 0.5,
                    indent: 5,
                    endIndent: 60,
                  ))
                ],
              ),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: AppSizes.iconmd,
                          height: AppSizes.iconmd,
                          image: AssetImage(AppImages.google),
                        )),
                  ),
                  const SizedBox(
                    width: AppSizes.spaceBtwItems,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.grey),
                        borderRadius: BorderRadius.circular(100)),
                    child: IconButton(
                        onPressed: () {},
                        icon: const Image(
                          width: AppSizes.iconmd,
                          height: AppSizes.iconmd,
                          image: AssetImage(AppImages.facebook),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
