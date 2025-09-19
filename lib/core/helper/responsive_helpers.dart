import 'package:flutter/material.dart';

double getResponsiveFontSize(BuildContext context, double baseSize) {
  final width = MediaQuery.of(context).size.width;

  if (width < 360) return baseSize * 0.85;
  if (width < 400) return baseSize * 0.9;
  if (width > 600) return baseSize * 1.1;

  return MediaQuery.of(context).textScaler.scale(baseSize);
}

double getResponsivePadding(BuildContext context, double basePadding) {
  final width = MediaQuery.of(context).size.width;

  if (width < 360) return basePadding * 0.85;
  if (width < 400) return basePadding * 0.9;
  if (width > 600) return basePadding * 1.1;

  return MediaQuery.of(context).textScaler.scale(basePadding);
}

double getResponsiveSpacing(BuildContext context, double baseSpacing) {
  final width = MediaQuery.of(context).size.width;

  if (width < 360) return baseSpacing * 0.85;
  if (width < 400) return baseSpacing * 0.9;
  if (width > 600) return baseSpacing * 1.1;

  return MediaQuery.of(context).textScaler.scale(baseSpacing);
}

double getResponsiveHeight(BuildContext context, double baseHeight) {
  final height = MediaQuery.of(context).size.height;

  if (height < 640) return baseHeight * 0.85;
  if (height < 720) return baseHeight * 0.9;
  if (height > 800) return baseHeight * 1.1;

  return MediaQuery.of(context).textScaler.scale(baseHeight);
}

double getResponsiveWidth(BuildContext context, double baseWidth) {
  final width = MediaQuery.of(context).size.width;

  if (width < 360) return baseWidth * 0.85;
  if (width < 400) return baseWidth * 0.9;
  if (width > 600) return baseWidth * 1.1;

  return MediaQuery.of(context).textScaler.scale(baseWidth);
}
