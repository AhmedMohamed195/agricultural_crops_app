import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:agricultural_crops_app/core/extensions/text_style.dart';
import '../../../../../core/utils/utils.dart';

// Step indicator widget
class StepIndicatorBasket extends StatelessWidget {
  final int currentStep;

  const StepIndicatorBasket({super.key, required this.currentStep});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Row with containers and dashed line at container level
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // First step container only (without text)
            buildStepCircle(1),
            // Dashed line connector - centered with containers
            Expanded(
              child: CustomPaint(
                size: Size(double.infinity, 2),
                painter: DashedLinePainter(
                  color: currentStep > 1
                      ? AppColors.primary
                      : AppColors.lightGray28,
                  dashWidth: 2,
                  dashSpace: 2,
                  strokeWidth: 2,
                ),
              ),
            ),

            buildStepCircle(2),

            Expanded(
              child: CustomPaint(
                size: Size(double.infinity, 2),
                painter: DashedLinePainter(
                  color: currentStep > 2
                      ? AppColors.primary
                      : AppColors.lightGray28,
                  dashWidth: 2,
                  dashSpace: 2,
                  strokeWidth: 2,
                ),
              ),
            ),

            buildStepCircle(3),

            Expanded(
              child: CustomPaint(
                size: Size(double.infinity, 2),
                painter: DashedLinePainter(
                  color: currentStep > 2
                      ? AppColors.primary
                      : AppColors.lightGray28,
                  dashWidth: 2,
                  dashSpace: 2,
                  strokeWidth: 2,
                ),
              ),
            ),
            buildStepCircle(4),
          ],
        ),

        // Gap between containers and text labels
        Gap(Sizes.s8),

        // Row with text labels below :-
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // First Text :-
            Row(
              children: [
                Gap(Sizes.s2),
                Text(
                  LocaleKeys.products.tr(),
                  style: AppTextStyles.style12.copyWith(
                    color: 1 == currentStep
                        ? AppColors.almostBlack800
                        : AppColors.lightGray36,
                    fontWeight: 1 == currentStep
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
              ],
            ),
            // Second Text :-
            Row(
              children: [
                Text(
                  LocaleKeys.timing
                      .tr(), // You might want different text for step 2
                  style: AppTextStyles.style12.copyWith(
                    color: 2 == currentStep
                        ? AppColors.almostBlack800
                        : AppColors.lightGray36,
                    fontWeight: 2 == currentStep
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
                Gap(Sizes.s5),
              ],
            ),
            // Third Text :-
            Row(
              children: [
                Text(
                  LocaleKeys.location.tr(),
                  style: AppTextStyles.style12.copyWith(
                    color: 3 == currentStep
                        ? AppColors.almostBlack800
                        : AppColors.lightGray36,
                    fontWeight: 3 == currentStep
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
                Gap(Sizes.s14),
              ],
            ),
            // Four Text :-
            Row(
              children: [
                Text(
                  LocaleKeys.payment.tr(),
                  style: AppTextStyles.style12.copyWith(
                    color: 4 == currentStep
                        ? AppColors.almostBlack800
                        : AppColors.lightGray36,
                    fontWeight: 4 == currentStep
                        ? FontWeight.w700
                        : FontWeight.w400,
                  ),
                ),
                Gap(Sizes.s5),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget buildStepCircle(int stepNumber) {
    bool isCompleted = currentStep > stepNumber;
    bool isCurrent = currentStep == stepNumber;

    return Container(
      width: Sizes.s45,
      height: Sizes.s40,
      padding: EdgeInsets.symmetric(horizontal: Sizes.s12, vertical: Sizes.s8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(Sizes.s15),
        border: Border.all(
          color: isCurrent || isCompleted
              ? AppColors.primary
              : AppColors.transparent,
        ),
        color: isCompleted
            ? AppColors.primary
            : isCurrent
            ? AppColors.white
            : AppColors.lightGray20,
      ),
      child: isCompleted
          ? Icon(Icons.check, color: AppColors.white, size: 20)
          : Center(
              child: Text(
                stepNumber.toString(),
                style: AppTextStyles.style14.bold.copyWith(
                  color: AppColors.darkGray600,
                ),
              ),
            ),
    );
  }
}

// Custom painter for dashed line
class DashedLinePainter extends CustomPainter {
  final Color color;
  final double dashWidth;
  final double dashSpace;
  final double strokeWidth;

  DashedLinePainter({
    required this.color,
    this.dashWidth = 2,
    this.dashSpace = 2,
    this.strokeWidth = 2,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..strokeWidth = strokeWidth
      ..style = PaintingStyle.stroke;

    double startX = 0;
    final y = size.height / 2;

    while (startX < size.width) {
      final endX = (startX + dashWidth).clamp(0.0, size.width);
      canvas.drawLine(Offset(startX, y), Offset(endX, y), paint);
      startX += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
