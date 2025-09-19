import 'package:flutter/material.dart';

class SliverText extends StatelessWidget {
  /// A sliver widget for displaying text.
  const SliverText(
    this.text, {
    super.key,
    this.style,
    this.maxLines,
    this.textAlign,
    this.textDirection,
    this.overflow,
  });

  /// [text] The text to display.
  final String text;

  /// [style] The style to apply to the text.
  final TextStyle? style;

  /// [maxLines] The maximum number of lines to allow.
  final int? maxLines;

  /// [textAlign] The alignment of the text within its container.
  final TextAlign? textAlign;

  /// [textDirection] The directionality of the text.
  final TextDirection? textDirection;

  /// [overflow] How visual overflow should be handled.
  final TextOverflow? overflow;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Text(
        text,
        style: style,
        maxLines: maxLines,
        textAlign: textAlign,
        textDirection: textDirection,
        overflow: overflow,
      ),
    );
  }
}
