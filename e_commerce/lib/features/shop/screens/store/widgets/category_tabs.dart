import 'package:e_commerce/common/widgets/heading/section_heading.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/product_cards/product_card_vertical.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/brands/brand_show-case.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class TCategoryTab extends StatelessWidget {
  const TCategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                // Brands
                const TBrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                const TBrandShowcase(
                  images: [
                    TImages.productImage3,
                    TImages.productImage2,
                    TImages.productImage1
                  ],
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                //Products
                TSectionHeading(
                  title: 'You might like',
                  showActionButton: true,
                  onPressed: () {},
                ),
                const SizedBox(
                  height: TSizes.spaceBtwItems,
                ),

                TGridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) => const TProductCardVertical(),
                ),
                const SizedBox(height: TSizes.spaceBtwSections,),
              ],
            ),
          ),
        ]);
  }
}
