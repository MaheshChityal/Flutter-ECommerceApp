import 'package:e_commerce/common/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Appbar
      appBar: TAppBar(
        title: Text('Reviewa & Ratings'),
      ),

      //Body
      body: SingleChildScrollView(),
    );
  }
}
