import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // Goggle login
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(TImages.google),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: TSizes.spaceBtwItems,
        ),
        // Facebook Login
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: TColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              image: AssetImage(TImages.facebook),
              width: TSizes.iconMd,
              height: TSizes.iconMd,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

