import 'package:flutter/material.dart';

abstract final class AppColors {
  // === MAIN COLORS ===
  static const Color primary = Color(0xFF91B772);
  static const Color secondary = Color(0xFF629836);
  static const Color success = Color(0xFF00CE23);
  static const Color warning = Color(0xFFF19920);

  // === BASIC COLORS ===
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color transparent = Color(0x00000000);
  static const Color red = Color(0xFFE50000);

  // === BACKGROUND COLORS ===
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color cardBackground = Color(0xFFF6FAFD);

  // === TEXT COLORS ===
  static const Color textPrimary = Color(0xFF191D31);
  static const Color textSecondary = darkGray400;

  // === BORDER COLORS ===
  static const Color border = lightGray21;
  static const Color borderLight = lightGray8;

  // === GRAY COLORS (Light to Dark) ===
  static const Color lightGray1 = Color(0xFFFCFCFE);
  static const Color lightGray2 = Color(0xFFFBFBFC);
  static const Color lightGray3 = Color(0xFFFAFAFA);
  static const Color lightGray4 = Color(0xFFF9F9F9);
  static const Color lightGray5 = Color(0xFFF6F6F6);
  static const Color lightGray6 = Color(0xFFF5F5F5);
  static const Color lightGray7 = Color(0xFFF4F6F9);
  static const Color lightGray8 = Color(0xFFF3F3F3);
  static const Color lightGray9 = Color(0xFFF2F2F7);
  static const Color lightGray10 = Color(0xFFF2F2F2);
  static const Color lightGray11 = Color(0xFFF1F1F1);
  static const Color lightGray12 = Color(0xFFF0F0F0);
  static const Color lightGray13 = Color(0xFFEFEFEF);
  static const Color lightGray14 = Color(0xFFEEEEEE);
  static const Color lightGray15 = Color(0xFFECECEC);
  static const Color lightGray16 = Color(0xFFEBEEF2);
  static const Color lightGray17 = Color(0xFFE9E9E9);
  static const Color lightGray18 = Color(0xFFE4E4E4);
  static const Color lightGray19 = Color(0xFFE3E3E3);
  static const Color lightGray20 = Color(0xFFD9D9D9);
  static const Color lightGray21 = Color(0xFFD8D8DE);
  static const Color lightGray22 = Color(0xFFD5D5D5);
  static const Color lightGray23 = Color(0xFFD1D5DB);
  static const Color lightGray24 = Color(0xFFD0D5DD);
  static const Color lightGray25 = Color(0xFFCECECE);
  static const Color lightGray26 = Color(0xFFCDC7B9);
  static const Color lightGray27 = Color(0xFFCACACA);
  static const Color lightGray28 = Color(0xFFC8C8C8);
  static const Color lightGray29 = Color(0xFFC0C0C0);
  static const Color lightGray30 = Color(0xFFB6B6B6);
  static const Color lightGray31 = Color(0xFFB4B4B4);
  static const Color lightGray32 = Color(0xFFADB3BC);
  static const Color lightGray33 = Color(0xFFABABAB);
  static const Color lightGray34 = Color(0xFFA29F9D);
  static const Color lightGray35 = Color(0xFFA2A2A3);
  static const Color lightGray36 = Color(0xFF999999);
  static const Color lightGray37 = Color(0xFF8B8D91);

  // === DARK GRAYS ===
  static const Color darkGray100 = Color(0xFF8B8B8B);
  static const Color darkGray200 = Color(0xFF878787);
  static const Color darkGray300 = Color(0xFF818181);
  static const Color darkGray400 = Color(0xFF797979);
  static const Color darkGray500 = Color(0xFF757788);
  static const Color darkGray600 = Color(0xFF757575);
  static const Color darkGray700 = Color(0xFF6D7580);
  static const Color darkGray800 = Color(0xFF6D6968);
  static const Color darkGray900 = Color(0xFF696974);
  static const Color darkGray950 = Color(0xFF666666);

  // === VERY DARK GRAYS ===
  static const Color veryDarkGray100 = Color(0xFF655F68);
  static const Color veryDarkGray200 = Color(0xFF616161);
  static const Color veryDarkGray300 = Color(0xFF5D5D5D);
  static const Color veryDarkGray400 = Color(0xFF595959);
  static const Color veryDarkGray500 = Color(0xFF575B6E);
  static const Color veryDarkGray600 = Color(0xFF535353);
  static const Color veryDarkGray700 = Color(0xFF50555C);
  static const Color veryDarkGray800 = Color(0xFF505256);
  static const Color veryDarkGray900 = Color(0xFF4F5159);

  // === ALMOST BLACK GRAYS ===
  static const Color almostBlack100 = Color(0xFF455A64);
  static const Color almostBlack200 = Color(0xFF444444);
  static const Color almostBlack300 = Color(0xFF3D3D3D);
  static const Color almostBlack400 = Color(0xFF25314C);
  static const Color almostBlack500 = Color(0xFF242424);
  static const Color almostBlack600 = Color(0xFF232323);
  static const Color almostBlack700 = Color(0xFF202244);
  static const Color almostBlack800 = Color(0xFF0F1621);
  static const Color almostBlack900 = Color(0xFF09101D);

  // === GREEN COLORS ===
  static const Color green50 = Color(0xFFE8F5E9);
  static const Color green100 = Color(0xFFB3FFD2);
  static const Color green200 = Color(0xFFB8E8BB);
  static const Color green300 = Color(0xFFA4F6AF);
  static const Color green400 = Color(0xFF94DC9A);
  static const Color green500 = Color(0xFF89E390);
  static const Color green600 = Color(0xFF89C763);
  static const Color green700 = Color(0xFF82C887);
  static const Color green800 = Color(0xFF8BD390);
  static const Color green900 = Color(0xFF91DC5A);

  // === BRIGHT GREEN ===
  static const Color brightGreen100 = Color(0xFFB6E892);
  static const Color brightGreen200 = Color(0xFFB8ED35);
  static const Color brightGreen300 = Color(0xFF6DC82A);
  static const Color brightGreen400 = Color(0xFF85C800);
  static const Color brightGreen500 = Color(0xFF97D302);
  static const Color brightGreen600 = Color(0xFF719E02);
  static const Color brightGreen700 = Color(0xFF6BA502);
  static const Color brightGreen800 = Color(0xFF5EAC24);
  static const Color brightGreen900 = Color(0xFF508902);

  // === DARK GREEN ===
  static const Color darkGreen100 = Color(0xFF4E901E);
  static const Color darkGreen200 = Color(0xFF47821C);
  static const Color darkGreen300 = Color(0xFF4DC556);
  static const Color darkGreen400 = Color(0xFF3BB54A);
  static const Color darkGreen500 = Color(0xFF299E10);
  static const Color darkGreen600 = Color(0xFF226702);
  static const Color darkGreen700 = Color(0xFF168800);
  static const Color darkGreen800 = Color(0xFF177700);

  // === FOREST GREEN ===
  static const Color forestGreen100 = Color(0xFF126B00);
  static const Color forestGreen200 = Color(0xFF0E9347);
  static const Color forestGreen300 = Color(0xFF0D8944);
  static const Color forestGreen400 = Color(0xFF02A437);
  static const Color forestGreen500 = Color(0xFF008906);
  static const Color forestGreen600 = Color(0xFF00CE23);
  static const Color forestGreen700 = Color(0xFF00AC0D);
  static const Color forestGreen800 = Color(0xFF025602);
  static const Color forestGreen900 = Color(0xFF016601);
  static const Color forestGreen950 = Color(0xFF007700);

  // === ORANGE COLORS ===
  static const Color orange50 = Color(0xFFFFEAD6);
  static const Color orange100 = Color(0xFFFFDBAC);
  static const Color orange200 = Color(0xFFFFD084);
  static const Color orange300 = Color(0xFFFFA654);
  static const Color orange400 = Color(0xFFFFB563);
  static const Color orange500 = Color(0xFFF6B545);
  static const Color orange600 = Color(0xFFF79E1B);
  static const Color orange700 = Color(0xFFF19920);
  static const Color orange800 = Color(0xFFE78825);
  static const Color orange900 = Color(0xFFE78244);

  // === ORANGE WARM ===
  static const Color orangeWarm100 = Color(0xFFE0AC69);
  static const Color orangeWarm200 = Color(0xFFFF7B29);
  static const Color orangeWarm300 = Color(0xFFFF5D03);
  static const Color orangeWarm400 = Color(0xFFFF5F00);
  static const Color orangeWarm500 = Color(0xFFCC9A62);
  static const Color orangeWarm600 = Color(0xFFCC9B66);
  static const Color orangeWarm700 = Color(0xFFB65416);

  // === YELLOW COLORS ===
  static const Color yellow100 = Color(0xFFFFE27A);
  static const Color yellow200 = Color(0xFFFFE262);
  static const Color yellow300 = Color(0xFFFFCA5D);
  static const Color yellow400 = Color(0xFFFFCB5B);
  static const Color yellow500 = Color(0xFFFDDD45);
  static const Color yellow600 = Color(0xFFFDC83A);
  static const Color yellow700 = Color(0xFFF6D14F);
  static const Color yellow800 = Color(0xFFF1C27D);
  static const Color yellow900 = Color(0xFF876A1E);

  // === RED COLORS ===
  static const Color red100 = Color(0xFFF7B6AD);
  static const Color red200 = Color(0xFFE39382);
  static const Color red300 = Color(0xFFE15C63);
  static const Color red400 = Color(0xFFDFA3A5);
  static const Color red500 = Color(0xFFE50000);
  static const Color red600 = Color(0xFFEB001B);
  static const Color red700 = Color(0xFFFF1F1F);
  static const Color red800 = Color(0xFFDC5757);
  static const Color red900 = Color(0xFFD14B62);

  // === DARK RED ===
  static const Color darkRed100 = Color(0xFFCB0303);
  static const Color darkRed200 = Color(0xFFAA1313);

  // === BLUE COLORS ===
  static const Color blue50 = Color(0xFFE2EBFF);
  static const Color blue100 = Color(0xFFF6FAFD);
  static const Color blue200 = Color(0xFF369DF7);
  static const Color blue500 = Color(0xFF1498B7);
  static const Color blue600 = Color(0xFF133BB7);
  static const Color blue700 = Color(0xFF1EA6BC);
  static const Color blue800 = Color(0xFF666EFA);
  static const Color blue900 = Color(0xFF0742A6);

  // === BROWN COLORS ===
  static const Color brown100 = Color(0xFFFFEAD6);
  static const Color brown200 = Color(0xFFFFDBAC);
  static const Color brown300 = Color(0xFFF1C27D);
  static const Color brown400 = Color(0xFFE0AC69);
  static const Color brown500 = Color(0xFFDC7F69);
  static const Color brown600 = Color(0xFFD46A50);
  static const Color brown700 = Color(0xFFCC9A62);
  static const Color brown800 = Color(0xFFCC9B66);
  static const Color brown900 = Color(0xFF604533);

  // === DARK BROWN ===
  static const Color darkBrown100 = Color(0xFF543927);
  static const Color primaryBlack = Color(0xFF514844);

  // === SPECIAL COLORS ===
  static const Color teal100 = Color(0xFF2FE8BA);
  static const Color teal200 = Color(0xFF2FE8A7);
  static const Color teal300 = Color(0xFF1EA6BC);
  static const Color teal400 = Color(0xFF1498B7);

  static const Color purple = Color(0xFF666EFA);

  static const Color mint100 = Color(0xFFB3FFD2);
  static const Color mint200 = Color(0xFFA4F6AF);
  static const Color mint300 = Color(0xFF2FE8A7);

  static const Color coral100 = Color(0xFFE39382);
  static const Color coral200 = Color(0xFFE9A999);

  static const Color peach100 = Color(0xFFF7B6AD);
  static const Color peach200 = Color(0xFFDFA3A5);
}
