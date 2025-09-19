// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// import 'package:agricultural_crops_app/core/enums/user_type_step_three.dart';
// import 'package:agricultural_crops_app/core/utils/utils.dart';
// import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/other_details_selection_buttons.dart';

// import '../../../../../core/enums/user_type_step_two.dart';

// class OtherDetailsSelectionThree extends StatefulWidget {
//   const OtherDetailsSelectionThree({super.key});

//   @override
//   State<OtherDetailsSelectionThree> createState() =>
//       _OtherDetailsSelectionThreeState();
// }

// class _OtherDetailsSelectionThreeState
//     extends State<OtherDetailsSelectionThree> {
//   UserTypeStepThree? selectedUserType;

//   void _onUserTypeSelected(UserTypeStepThree userType) {
//     setState(() {
//       selectedUserType = selectedUserType == userType ? null : userType;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SingleChildScrollView(
//       scrollDirection: Axis.vertical,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               OtherDetailsSelectionButtons(
//                 icon: AppIcons.clipboard,
//                 title: LocaleKeys.institutionorcompany,
//                 isSelected: selectedUserType == UserTypeStepThree.institutionorcompany,
//                 onTap: () => _onUserTypeSelected(UserTypeStepThree.institutionorcompany),
//               ),
//               const Gap(Sizes.s10),
//               OtherDetailsSelectionButtons(
//                 icon: AppIcons.farmerIcon,
//                 title: LocaleKeys.individual,
//                 isSelected: selectedUserType == UserTypeStepThree.individual,
//                 onTap: () => _onUserTypeSelected(UserTypeStepThree.individual),
//               ),
//               const Gap(Sizes.s10),
//               OtherDetailsSelectionButtons(
//                 icon: AppIcons.farmerIcon,
//                 title: LocaleKeys.otherr,
//                 isSelected: selectedUserType == UserTypeStepThree.other,
//                 onTap: () => _onUserTypeSelected(UserTypeStepThree.other),
//               ),
//             ],
//           ),
//            if (selectedUserType == UserTypeStepThree.institutionorcompany)
//           Text("aaaaaaaaaaaa"),
//         ],
//       ),
//     );
//   }
// }
