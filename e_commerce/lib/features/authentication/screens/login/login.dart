import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:e_commerce/common/styles/spacing_styles.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/constants/text_strings.dart';

import '../../../../common/widgets/login_signup/form_divider.dart';
import '../../../../common/widgets/login_signup/social_button.dart';
import 'widgets/loginForm.dart';
import 'widgets/loginHeader.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              // Logo Title and Subtitle
              const LoginHeader(),
              // Form Fields
              const LoginForm(),

              //divider
              FormDivider(dividerText: TTexts.orSignInWith.capitalize!,),

              const SizedBox(
                height: TSizes.spaceBtwSections,
              ),

              //Footer
              const SocialButton()
            ],
          ),
        ),
      ),
    );
  }
}

