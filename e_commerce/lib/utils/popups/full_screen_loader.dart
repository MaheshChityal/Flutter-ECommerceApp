import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../common/widgets/loaders/animation_loader.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
        context: Get.overlayContext!,
        builder: (_) => PopScope(
              canPop: false,
              child: Container(
                color: THelperFunctions.isDarkMode(Get.context!)
                    ? TColors.dark
                    : TColors.white,
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 250,
                    ),
                    TAnimationLoaderWidget(
                      text: text,
                      animation: animation,
                    ),
                  ],
                ),
              ),
            ));
  }
}
