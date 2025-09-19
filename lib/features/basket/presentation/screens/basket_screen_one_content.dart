import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class BasketScreenOneContent extends StatefulWidget {
  final String text;
  final String image;
  const BasketScreenOneContent({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  State<BasketScreenOneContent> createState() => _BasketScreenOneContentState();
}

class _BasketScreenOneContentState extends State<BasketScreenOneContent> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 290,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
        child: Card(
          color: AppColors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          margin: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.s15,
                  vertical: Sizes.s15,
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        widget.image,
                        width: Sizes.s50,
                        height: Sizes.s50,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: Sizes.s15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.text,
                          style: AppTextStyles.style16.copyWith(
                            fontWeight: FontWeight.w700,
                            color: AppColors.textPrimary,
                          ),
                        ),
                        SizedBox(height: 4),
                        Row(
                          children: [
                            Text(
                              "400 الف ",
                              style: AppTextStyles.style12.copyWith(
                                fontWeight: FontWeight.w700,
                                color: AppColors.secondary,
                              ),
                            ),
                            Gap(Sizes.s3),
                            SvgImage(AppIcons.saudiRiyalSymbol),
                          ],
                        ),
                      ],
                    ),
                    Spacer(),
                    SvgImage(
                      AppIcons.trash,
                      height: Sizes.s24,
                      width: Sizes.s24,
                    ),
                  ],
                ),
              ),
              Gap(Sizes.s10),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s60),
                child: SizedBox(
                  width: 160,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "اكتب السعر المقترح",
                      hintStyle: AppTextStyles.style12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightGray37,
                      ),
                      filled: true,
                      fillColor: AppColors.lightGray6,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Gap(Sizes.s8),

              /// السعر المقترح
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s60),
                child: Text(
                  "السعر المقترح: من 350 الف  الى 400 الف ",
                  style: AppTextStyles.style12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.lightGray37,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Gap(Sizes.s8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s60),
                child: SizedBox(
                  width: 160,
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "اكتب الكمية ",
                      hintStyle: AppTextStyles.style12.copyWith(
                        fontWeight: FontWeight.w400,
                        color: AppColors.lightGray37,
                      ),
                      filled: true,
                      fillColor: AppColors.lightGray6,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Gap(Sizes.s8),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: Sizes.s60),
                child: Text(
                  "المتاح: 50 طن",
                  style: AppTextStyles.style12.copyWith(
                    fontWeight: FontWeight.w400,
                    color: AppColors.darkGray900,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
