import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

/// widget that wraps multiple [Sliver]s into a single scrollable
/// view.
///
/// This widget is useful when you want to display multiple slivers in a
/// single scrollable area.
class SliverColumn extends StatelessWidget {
  /// Creates a [SliverColumn] widget.
  ///
  /// The [slivers] parameter is required and should contain the list of
  /// [Sliver] widgets that you want to display.
  ///
  /// The [pushPinnedChildren] parameter specifies whether the pinned
  /// children in the slivers should be pushed to the end of the list.
  const SliverColumn({
    super.key,
    required this.slivers,
    this.pushPinnedChildren = false,
  });

  /// The list of slivers to be displayed.
  final List<Widget> slivers;

  /// Specifies whether the pinned children in the slivers should be pushed
  /// to the end of the list.
  final bool pushPinnedChildren;

  @override
  Widget build(BuildContext context) {
    // Use MultiSliver to wrap the slivers and return the widget.
    return MultiSliver(
      pushPinnedChildren: pushPinnedChildren,
      children: slivers,
    );
  }
}
