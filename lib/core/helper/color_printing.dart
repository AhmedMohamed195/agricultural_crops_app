import 'package:ansicolor/ansicolor.dart';
import 'package:flutter/foundation.dart';

AnsiPen pen = AnsiPen();

void colorPrinting(value) {
  pen = AnsiPen()..green();
  if (kDebugMode) print('😈${pen('$value')}');
}

void errorPrinting(dynamic value) {
  pen = AnsiPen()..red();
  if (kDebugMode) print('🤦‍♂️${pen('$value')}');
}
