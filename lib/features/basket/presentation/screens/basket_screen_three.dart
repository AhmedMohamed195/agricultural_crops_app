import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class BasketScreenThree extends StatefulWidget {
  const BasketScreenThree({super.key});

  @override
  State<BasketScreenThree> createState() => _BasketScreenThreeState();
}

class _BasketScreenThreeState extends State<BasketScreenThree> {
  int selectedIndex = 0; // 0 = البيت, 1 = المصنع, 2 = المزرعة

  final List<Map<String, String>> addresses = [
    {
      "title": "البيت",
      "subtitle": "وصف مفصل للسائق لمعرفة العنوان من الاماكن القريبة",
    },
    {
      "title": "المصنع",
      "subtitle": "وصف مفصل للسائق لمعرفة العنوان من الاماكن القريبة",
    },
    {
      "title": "المزرعة",
      "subtitle": "وصف مفصل للسائق لمعرفة العنوان من الاماكن القريبة",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: Column(
        children: [
          // Button Add Address :-
          DottedBorder(
            options: RoundedRectDottedBorderOptions(
              color: Colors.grey.shade300,
              strokeWidth: 1.5,
              dashPattern: const [6, 3],
              radius: const Radius.circular(12),
              padding: EdgeInsets.zero,
            ),
            child: Container(
              width: Sizes.s340,
              height: Sizes.s50,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.add, size: Sizes.s24),
                  SizedBox(width: Sizes.s14),
                  Text(
                    "اضافة عنوان",
                    style: AppTextStyles.style14.copyWith(
                      fontWeight: FontWeight.w700,
                      color: AppColors.darkGray800,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),

          ...List.generate(addresses.length, (index) {
            final address = addresses[index];
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () => setState(() => selectedIndex = index),
              child: Container(
                margin: const EdgeInsets.only(bottom: 12),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.green.shade50 : Colors.white,
                  border: Border.all(
                    color: isSelected ? Colors.green : Colors.grey.shade300,
                  ),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SvgImage(AppIcons.locationPin),
                              Gap(Sizes.s10),
                              Expanded(
                                child: Text(
                                  address["title"]!,
                                  style: AppTextStyles.style16.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.almostBlack900,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 6),
                          Padding(
                            padding: EdgeInsets.only(right: Sizes.s30),
                            child: Text(
                              address["subtitle"]!,
                              style: AppTextStyles.style12.copyWith(
                                fontWeight: FontWeight.w400,
                                color: AppColors.almostBlack900,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Icon(
                      isSelected ? Icons.check_circle : Icons.circle_outlined,
                      color: isSelected ? Colors.green : Colors.grey.shade400,
                    ),
                  ],
                ),
              ),
            );
          }),
        ],
      ),
    );
  }
}
