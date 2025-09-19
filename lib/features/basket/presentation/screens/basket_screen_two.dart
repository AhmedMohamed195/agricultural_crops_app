import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';
import 'package:agricultural_crops_app/core/widgets/rich_text_with_asterisk.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class BasketScreenTwo extends StatefulWidget {
  const BasketScreenTwo({super.key});

  @override
  State<BasketScreenTwo> createState() => _BasketScreenTwoState();
}

class _BasketScreenTwoState extends State<BasketScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.s24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // first item :-
          RichTextWithAsterisk(text: "تاريخ التحميل"),
          const Gap(Sizes.s10),
          MainTextField(
            hintText: "اختر",
            suffixIcon: SvgImage(AppIcons.calendarPlus),
          ),
          // second item :-
          const Gap(Sizes.s20),
          RichTextWithAsterisk(text: " مكان التفريغ"),
          const Gap(Sizes.s10),
          MainTextField(
            hintText: "اختر",
            suffixIcon: SvgImage(AppIcons.calendarPlus),
          ),
          // third item :-
          const Gap(Sizes.s20),
          RichTextWithAsterisk(text: "عدد الشحنات "),
          const Gap(Sizes.s10),
          MainTextField(hintText: "0", suffixIcon: SvgImage(AppIcons.sort)),
          // first item :-
          const Gap(Sizes.s20),
          RichTextWithAsterisk(text: "نوع الشاحنه"),
          const Gap(Sizes.s10),
          MainTextField(
            hintText: "اختر",
            suffixIcon: SvgImage(AppIcons.caretdown),
          ),
        ],
      ),
    );
  }
}
