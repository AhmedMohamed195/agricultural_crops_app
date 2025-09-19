import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';

import '../../../../core/widgets/rich_text_with_asterisk.dart';

class PhoneNumberSection extends StatelessWidget {
  final bool? withAsterisk;
  const PhoneNumberSection({super.key, this.withAsterisk = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        withAsterisk!
            ? RichTextWithAsterisk(text: LocaleKeys.phoneNumber)
            : Text(
                LocaleKeys.phoneNumber.tr(),
                style: AppTextStyles.style14.bold.copyColorWith(
                  AppColors.veryDarkGray500,
                ),
              ),
        Gap(Sizes.s10),
        Row(
          children: [
            Expanded(
              child: MainTextField(
                hintText: LocaleKeys.phoneNumber.tr(),
                hintColor: AppColors.lightGray37,
                borderColor: AppColors.transparent,
              ),
            ),
            Gap(Sizes.s10),
            Container(
              padding: EdgeInsets.all(Sizes.s14),
              decoration: BoxDecoration(
                color: AppColors.background,
                borderRadius: BorderRadius.circular(Sizes.s15),
                border: Border.all(color: AppColors.border),
              ),
              child: Text(
                countryCode,
                style: AppTextStyles.style14.copyColorWith(
                  AppColors.lightGray37,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
