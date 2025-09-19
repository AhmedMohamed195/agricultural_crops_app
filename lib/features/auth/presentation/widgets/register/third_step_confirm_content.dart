import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_icons.dart';
import 'package:agricultural_crops_app/core/utils/app_strings.g.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';
import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';
import 'package:agricultural_crops_app/core/widgets/rich_text_with_asterisk.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class ThirdStepOFConfirmContent extends StatefulWidget {
  const ThirdStepOFConfirmContent({super.key});

  @override
  State<ThirdStepOFConfirmContent> createState() =>
      _ThirdStepOFConfirmContentState();
}

class _ThirdStepOFConfirmContentState extends State<ThirdStepOFConfirmContent> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Gap(Sizes.s20),
        RichTextWithAsterisk(text: LocaleKeys.beneficiaryname.tr()),
        const Gap(Sizes.s10),
        MainTextField(hintText: LocaleKeys.type.tr()),
        const Gap(Sizes.s20),
        RichTextWithAsterisk(text: LocaleKeys.bankname.tr()),
        const Gap(Sizes.s10),
        MainTextField(hintText: LocaleKeys.type.tr()),
        const Gap(Sizes.s20),
        RichTextWithAsterisk(text: LocaleKeys.iban.tr()),
        const Gap(Sizes.s10),
        MainTextField(hintText: LocaleKeys.type.tr()),

        const Gap(Sizes.s20),
        RichTextWithAsterisk(text: LocaleKeys.ibanbankcertificate.tr()),
        const Gap(Sizes.s10),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.s10),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.background,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.lightGray21, width: 1.5),
            ),
            height: Sizes.s170,
            width: Sizes.s340,
            child: SvgImage(AppIcons.imageframe),
          ),
        ),
        const Gap(Sizes.s100),
      ],
    );
  }
}
