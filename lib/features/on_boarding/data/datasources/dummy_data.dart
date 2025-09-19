import 'package:easy_localization/easy_localization.dart';
import 'package:agricultural_crops_app/core/utils/app_images.dart';
import 'package:agricultural_crops_app/core/utils/app_strings.g.dart';

final List<Map<String, String>> pages = [
  {
    "image": AppImages.onboardingimage_1,
    "title": LocaleKeys.freshproduct.tr(),
    "subtitle": LocaleKeys.simpleexplanation.tr(),
    "button": LocaleKeys.thenext.tr(),
    "background": AppImages.onboardingbackgroundimage_1,
  },
  {
    "image": AppImages.onboardingimage_2,
    "title": LocaleKeys.securetransactions.tr(),
    "subtitle": LocaleKeys.simpleexplanation.tr(),
    "button": LocaleKeys.thenext.tr(),
    "background": AppImages.onboardingbackgroundimage_2,
  },
  {
    "image": AppImages.onboardingimage_3,
    "title": LocaleKeys.productdelivery.tr(),
    "subtitle": LocaleKeys.simpleexplanation.tr(),
    "button": LocaleKeys.start.tr(),
    "background": AppImages.onboardingbackgroundimage_3,
  },
];
