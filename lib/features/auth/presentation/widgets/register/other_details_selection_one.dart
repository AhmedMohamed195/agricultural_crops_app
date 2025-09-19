import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/enums/user_type_step_one.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';
import 'package:agricultural_crops_app/core/widgets/rich_text_with_asterisk.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/other_details_selection_buttons.dart';

class OtherDetailsSelectionOne extends StatefulWidget {
  const OtherDetailsSelectionOne({super.key});

  @override
  State<OtherDetailsSelectionOne> createState() =>
      _OtherDetailsSelectionOneState();
}

class _OtherDetailsSelectionOneState extends State<OtherDetailsSelectionOne> {
  UserTypeStepOne? selectedUserType = UserTypeStepOne.institutionorcompany;

  void _onUserTypeSelected(UserTypeStepOne userType) {
    setState(() {
      selectedUserType = userType;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(Sizes.s10),
              OtherDetailsSelectionButtons(
                icon: AppIcons.clipboard,
                title: LocaleKeys.institutionorcompany,
                isSelected:
                    selectedUserType == UserTypeStepOne.institutionorcompany,
                onTap: () =>
                    _onUserTypeSelected(UserTypeStepOne.institutionorcompany),
              ),

              const Gap(Sizes.s20),
              OtherDetailsSelectionButtons(
                icon: AppIcons.farmerIcon,
                title: LocaleKeys.individual,
                isSelected: selectedUserType == UserTypeStepOne.individual,
                onTap: () => _onUserTypeSelected(UserTypeStepOne.individual),
              ),

              const Gap(Sizes.s10),
              OtherDetailsSelectionButtons(
                icon: AppIcons.farmerIcon,
                title: LocaleKeys.otherr,
                isSelected: selectedUserType == UserTypeStepOne.other,
                onTap: () => _onUserTypeSelected(UserTypeStepOne.other),
              ),
            ],
          ),

          if (selectedUserType == UserTypeStepOne.institutionorcompany) ...[
            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.idnumber),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.name),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.companyname),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.commercialregister),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s100),
          ],

          if (selectedUserType == UserTypeStepOne.individual) ...[
            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.idnumber.tr()),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.yesterday.tr()),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.dateofbirth.tr()),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: LocaleKeys.selfemploymentdocument.tr()),
            const Gap(Sizes.s10),
            MainTextField(hintText: LocaleKeys.type.tr()),

            const Gap(Sizes.s100),
          ],

          if (selectedUserType == UserTypeStepOne.other) ...[
            const Gap(Sizes.s20),
            RichTextWithAsterisk(text: "بيانات اخرى"),
            const Gap(Sizes.s10),
            MainTextField(hintText: "اكتب "),
            const Gap(Sizes.s100),
            Container(height: 50),
          ],
        ],
      ),
    );
  }
}
