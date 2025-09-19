import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/config/routes/app_navigator.dart';
import 'package:agricultural_crops_app/config/routes/app_routes.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';
import '../../../../core/enums/other_details_steps_enum.dart';
import '../../../../../core/utils/utils.dart';

class LastSection extends StatefulWidget {
  final String text;
  final int currentStep;
  final void Function(int) setCurrentStep;
  final OtherDetailsStepsEnumOne? otherDetailsCurrentStep;
  final void Function(OtherDetailsStepsEnumOne) setCurrentOtherDetailsStep;
  const LastSection({
    super.key,
    required this.currentStep,
    required this.setCurrentStep,
    this.otherDetailsCurrentStep,
    required this.setCurrentOtherDetailsStep,
    required this.text,
  });

  @override
  State<LastSection> createState() => _LastSectionState();
}

class _LastSectionState extends State<LastSection> {
  @override
  Widget build(BuildContext context) {
    bool isStepOne = widget.currentStep == 1;
    bool isStepTwo = widget.currentStep == 2;
    bool isStepThree = widget.currentStep == 3;
    bool isStepFour = widget.currentStep == 4;

    return Container(
      height: Sizes.s150,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.surface,
        border: Border.all(color: AppColors.lightGray21, width: 1.5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
        ).copyWith(bottom: Sizes.s12, top: Sizes.s10),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  LocaleKeys.total.tr(),
                  style: AppTextStyles.style12.copyWith(
                    color: AppColors.darkGray900,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Spacer(),
                Row(
                  children: [
                    Text(
                      widget.text,
                      style: AppTextStyles.style16.copyWith(
                        color: AppColors.secondary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SvgImage(AppIcons.saudiRiyalSymbol),
                  ],
                ),
              ],
            ),

            Divider(),
            Gap(Sizes.s10),
            Row(
              children: [
                // Button One :-
                GestureDetector(
                  onTap: () {
                    if (isStepOne || isStepTwo || isStepThree) {
                      widget.setCurrentStep(widget.currentStep + 1);
                    } else if (isStepFour) {
                      AppNavigator.navigateNamedTo(
                        AppRoutes.submitapplicationscreen,
                      );
                    }
                  },
                  child: Container(
                    height: Sizes.s50,
                    width: Sizes.s85,
                    decoration: BoxDecoration(
                      color: AppColors.primary,
                      borderRadius: BorderRadius.circular(15),
                      border: BoxBorder.all(color: AppColors.secondary),
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.next.tr(),
                        style: AppTextStyles.style16.copyWith(
                          color: AppColors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
                Spacer(),
                // Button Two :-
                GestureDetector(
                  onTap: () {
                    if (isStepTwo) {
                      widget.setCurrentStep(widget.currentStep - 1);
                      widget.setCurrentOtherDetailsStep(
                        OtherDetailsStepsEnumOne.stepOne,
                      );
                    } else if (isStepThree) {
                      widget.setCurrentStep(widget.currentStep - 1);
                      widget.setCurrentOtherDetailsStep(
                        OtherDetailsStepsEnumOne.stepTwo,
                      );
                    } else if (isStepFour) {
                      widget.setCurrentStep(widget.currentStep - 1);
                      widget.setCurrentOtherDetailsStep(
                        OtherDetailsStepsEnumOne.stepThree,
                      );
                    }
                  },
                  child: Container(
                    height: Sizes.s50,
                    width: Sizes.s85,
                    decoration: BoxDecoration(
                      color: AppColors.transparent,
                      borderRadius: BorderRadius.circular(15),
                      border: BoxBorder.all(
                        color: AppColors.black.withValues(alpha: 0.2),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        LocaleKeys.previous.tr(),
                        style: AppTextStyles.style16.copyWith(
                          color: AppColors.black.withValues(alpha: 0.2),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Gap(Sizes.s20),
          ],
        ),
      ),
    );
  }
}
