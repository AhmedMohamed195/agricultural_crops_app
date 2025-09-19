import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';

class SliderSection extends StatefulWidget {
  const SliderSection({super.key});

  @override
  State<SliderSection> createState() => _SliderSectionState();
}

class _SliderSectionState extends State<SliderSection> {
  final List<String> images = [
    AppImages.garlic,
    AppImages.garlic,
    AppImages.garlic,
    AppImages.garlic,
    AppImages.garlic,
  ];
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: Sizes.s164,
          width: double.infinity,
          child: CarouselSlider(
            items: images.map((img) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: Sizes.s6),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    img,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              );
            }).toList(),
            options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: false,
              viewportFraction: 1.0,
              aspectRatio: 16 / 9,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
        ),
        Gap(Sizes.s10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map((entry) {
            return Container(
              width: Sizes.s8,
              height: Sizes.s8,
              margin: const EdgeInsets.symmetric(horizontal: Sizes.s4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == entry.key
                    ? AppColors.secondary
                    : AppColors.lightGray20,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
