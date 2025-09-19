import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/utils/utils.dart';
import 'package:agricultural_crops_app/core/widgets/svg_image.dart';

class SubmitApplicationScreen extends StatefulWidget {
  const SubmitApplicationScreen({super.key});

  @override
  State<SubmitApplicationScreen> createState() =>
      _SubmitApplicationScreenState();
}

class _SubmitApplicationScreenState extends State<SubmitApplicationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withValues(alpha: 0.5),
      body: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 230,
          width: double.infinity,
          padding: const EdgeInsets.all(5),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Gap(Sizes.s30),
              SvgImage(
                AppIcons.checkCircle,
                height: 60,
                width: 60,
                fit: BoxFit.cover,
              ),
              Gap(Sizes.s10),
              Text(
                "تم ارسال الطلب للبائع",
                style: AppTextStyles.style20.copyWith(
                  fontWeight: FontWeight.w700,
                  color: AppColors.almostBlack700,
                ),
              ),
              Gap(Sizes.s10),
              Text(
                "في انتظار موافقة البائع لاتمام عملية الشراء و التوصيل",
                style: AppTextStyles.style14.copyWith(
                  fontWeight: FontWeight.w400,
                  color: AppColors.almostBlack700,
                ),
              ),

              Gap(Sizes.s10),
            ],
          ),
        ),
      ),
    );
  }
}
