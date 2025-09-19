// // import 'package:easy_localization/easy_localization.dart';
// import 'package:flutter/material.dart';
// import 'package:gap/gap.dart';
// // import 'package:agricultural_crops_app/core/enums/user_type_step_one.dart';
// import 'package:agricultural_crops_app/core/utils/utils.dart';
// // import 'package:agricultural_crops_app/core/widgets/main_text_field.dart';
// // import 'package:agricultural_crops_app/core/widgets/rich_text_with_asterisk.dart';
// import 'package:agricultural_crops_app/features/auth/presentation/widgets/register/other_details_selection_buttons.dart';

// import '../../../../../core/enums/user_type_step_two.dart';

// class OtherDetailsSelectionTwo extends StatefulWidget {
//   const OtherDetailsSelectionTwo({super.key});

//   @override
//   State<OtherDetailsSelectionTwo> createState() =>
//       _OtherDetailsSelectionTwoState();
// }

// class _OtherDetailsSelectionTwoState extends State<OtherDetailsSelectionTwo> {
//   UserTypeStepTwo? selectedUserType;

//   void _onUserTypeSelected(UserTypeStepTwo userType) {
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
//                 isSelected:
//                     selectedUserType == UserTypeStepTwo.institutionorcompany,
//                 onTap: () =>
//                     _onUserTypeSelected(UserTypeStepTwo.institutionorcompany),
//               ),
//               const Gap(Sizes.s10),
//               OtherDetailsSelectionButtons(
//                 icon: AppIcons.farmerIcon,
//                 title: LocaleKeys.individual,
//                 isSelected: selectedUserType == UserTypeStepTwo.individual,
//                 onTap: () => _onUserTypeSelected(UserTypeStepTwo.individual),
//               ),
//               const Gap(Sizes.s10),
//               OtherDetailsSelectionButtons(
//                 icon: AppIcons.farmerIcon,
//                 title: LocaleKeys.otherr,
//                 isSelected: selectedUserType == UserTypeStepTwo.other,
//                 onTap: () => _onUserTypeSelected(UserTypeStepTwo.other),
//               ),
//             ],
//           ),
//           if (selectedUserType == UserTypeStepTwo.institutionorcompany)
//             Text(
//               "AHMEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEED",
//               style: TextStyle(fontSize: 20, color: Colors.red),
//             ),
//         ],
//       ),
//     );
//   }
// }
