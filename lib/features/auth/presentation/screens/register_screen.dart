import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/widgets/app_bar_divider.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/third_step_confirm_content.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/register_navigation_buttons.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/step_indicator.dart';
import '../../../../core/enums/other_details_steps_enum.dart';
import '../../../../core/utils/utils.dart';
import '../widgets/register/fisrst_step_data_content.dart';
import '../widgets/register/second_step_other_details_content.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  int currentStep = 1;
  OtherDetailsStepsEnumOne otherDetailsCurrentStep =
      OtherDetailsStepsEnumOne.stepOne;

  void setCurrentStep(final int step) => setState(() => currentStep = step);
  void setCurrentOtherDetailsStep(final OtherDetailsStepsEnumOne step) =>
      setState(() => otherDetailsCurrentStep = step);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocaleKeys.signUp.tr()),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(Sizes.s10),
          child: AppBarDivider(),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: defaultPadding,
          vertical: Sizes.s20,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Sizes.s32),
              child: StepIndicator(currentStep: currentStep),
            ),
            const Gap(Sizes.s20),
            _buildBodyContent(currentStep),
            Gap(Sizes.s128),
            RegisterNavigationButtons(
              currentStep: currentStep,
              setCurrentStep: setCurrentStep,
              otherDetailsCurrentStep: otherDetailsCurrentStep,
              setCurrentOtherDetailsStep: setCurrentOtherDetailsStep,
            ),
            Gap(Sizes.s20),
          ],
        ),
      ),
    );
  }

  Widget _buildBodyContent(final int currentStep) {
    switch (currentStep) {
      case 1:
        return const FisrstStepOFDataContent();
      case 2:
        return SecondStepOtherDetailsContent(
          otherDetailsCurrentStep: otherDetailsCurrentStep,
        );
      case 3:
        return ThirdStepOFConfirmContent();
      default:
        return const FisrstStepOFDataContent();
    }
  }
}
