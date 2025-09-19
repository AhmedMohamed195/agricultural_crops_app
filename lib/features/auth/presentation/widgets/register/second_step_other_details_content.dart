import 'package:flutter/material.dart';
import 'package:agricultural_crops_app/core/enums/other_details_steps_enum.dart';
import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/other_details_selection_one.dart';
// import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/other_details_selection_three.dart';

// import 'other_details_selection_two.dart';

class SecondStepOtherDetailsContent extends StatelessWidget {
  final OtherDetailsStepsEnumOne? otherDetailsCurrentStep;
  const SecondStepOtherDetailsContent({
    super.key,
    this.otherDetailsCurrentStep = OtherDetailsStepsEnumOne.stepOne,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [_buildBodyContent(otherDetailsCurrentStep!)]);
  }

  Widget _buildBodyContent(OtherDetailsStepsEnumOne currentStep) {
    // switch (currentStep) {
    //   case OtherDetailsStepsEnum.stepOne:
    //     return const OtherDetailsSelectionOne();
    //   case OtherDetailsStepsEnum.stepTwo:
    //     return const OtherDetailsSelectionTwo();
    //   case OtherDetailsStepsEnum.stepThree:
    //     return const OtherDetailsSelectionThree();
    // }
    return const OtherDetailsSelectionOne();
  }
}
