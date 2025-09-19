import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';
import 'package:agricultural_crops_app/core/widgets/rich_text_with_asterisk.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

import '../../../../../core/utils/utils.dart';
import '../phone_number_section.dart';

class FisrstStepOFDataContent extends StatelessWidget {
  const FisrstStepOFDataContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Center(child: SvgImage(AppIcons.user)),
        const Gap(Sizes.s20),
        RichTextWithAsterisk(text: LocaleKeys.username),
        const Gap(Sizes.s10),
        MainTextField(hintText: LocaleKeys.type.tr()),
        const Gap(Sizes.s20),
        Text(
          LocaleKeys.email.tr(),
          style: AppTextStyles.style14.bold.copyColorWith(
            AppColors.veryDarkGray300,
          ),
        ),
        const Gap(Sizes.s10),
        MainTextField(hintText: LocaleKeys.type.tr()),
        const Gap(Sizes.s20),
        const PhoneNumberSection(withAsterisk: true),
      ],
    );
  }
}
