import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/rounded_container.dart';
import 'package:e_commerce/common/widgets/custom_shapes/container/search_container.dart';
import 'package:e_commerce/common/widgets/heading/section_heading.dart';
import 'package:e_commerce/common/widgets/layouts/grid_layout.dart';
import 'package:e_commerce/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:e_commerce/common/widgets/texts/brand_title_text_with_verified_icon.dart';
import 'package:e_commerce/features/shop/screens/store/widgets/category_tabs.dart';
import 'package:e_commerce/utils/constants/colors.dart';
import 'package:e_commerce/utils/constants/image_strings.dart';
import 'package:e_commerce/utils/constants/sizes.dart';
import 'package:e_commerce/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../common/widgets/brands/brand_card.dart';
import '../../../../common/widgets/brands/brand_show-case.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../utils/constants/enums.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Store',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CartCounterIcon(
              onPressed: () {},
            ),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxisScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 440,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      // Search Bar
                      const SizedBox(height: TSizes.spaceBtwItems),
                      TSearchContainer(
                        text: 'Search in Store',
                        showBorder: true,
                        showBackground: false,
                        padding: EdgeInsets.zero,
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwSections,
                      ),

                      // Featured Brands
                      TSectionHeading(
                        title: 'Feature Brands',
                        showActionButton: true,
                        onPressed: () {},
                      ),
                      const SizedBox(
                        height: TSizes.spaceBtwItems / 1.5,
                      ),

                      // Brands GRID
                      TGridLayout(
                        itemCount: 4,
                        mainAxisExtent: 80,
                        itemBuilder: (_, index) {
                          return TBrandCard(
                            showBorder: true,
                          );
                        },
                      )
                    ],
                  ),
                ),

                // Tabs
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: TColors.primary,
                  labelColor: THelperFunctions.isDarkMode(context)
                      ? TColors.white
                      : TColors.primary,
                  unselectedLabelColor: TColors.darkGrey,
                  tabs: [
                    Tab(child: Text('Sports')),
                    Tab(child: Text('Furniture')),
                    Tab(child: Text('Electronics')),
                    Tab(child: Text('Cloths')),
                    Tab(child: Text('Cosmatics')),
                  ],
                ),
              ),
            ];
          },

          //Body
          body: TabBarView(children: [
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
            TCategoryTab(),
          ]),
        ),
      ),
    );
  }
}
