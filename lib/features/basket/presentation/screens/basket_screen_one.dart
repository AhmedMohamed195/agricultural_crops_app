import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/utils/app_images.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/features/basket/presentation/screens/basket_screen_one_content.dart';

class BasketScreenOne extends StatefulWidget {
  const BasketScreenOne({super.key});

  @override
  State<BasketScreenOne> createState() => _BasketScreenOneState();
}

class _BasketScreenOneState extends State<BasketScreenOne> {
  @override
  Widget build(BuildContext context) {
    List<BasketScreenOneContent> products = [
      BasketScreenOneContent(text: "ثوم بلدي", image: AppImages.garlic),
      BasketScreenOneContent(text: "طماطم", image: AppImages.tomatoImage),
    ];
    return Column(
      children: List.generate(
        products.length,
        (index) => Padding(
          padding: EdgeInsets.only(
            bottom: index == products.length - 1 ? 0 : Sizes.s20,
          ),
          child: products[index],
        ),
      ),
    );
  }
}
