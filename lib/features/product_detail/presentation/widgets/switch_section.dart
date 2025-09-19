import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:agricultural_crops_app/core/utils/app_colors.dart';
import 'package:agricultural_crops_app/core/utils/app_strings.g.dart';
import 'package:agricultural_crops_app/core/utils/sizes.dart';

class SwitchPage extends StatefulWidget {
  final ValueNotifier<int> tabIndexNotifier;
  const SwitchPage({super.key, required this.tabIndexNotifier});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  final List<DataTab> _tabs = [
    DataTab(title: LocaleKeys.data.tr()),
    DataTab(title: LocaleKeys.saleDate.tr()),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: widget.tabIndexNotifier,
      builder: (context, currentIndex, _) {
        return Container(
          decoration: BoxDecoration(
            color: AppColors.lightGray14,
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(4),
          child: FlutterToggleTab(
            width: 85,
            borderRadius: 8,
            marginSelected: const EdgeInsets.all(4),
            selectedIndex: currentIndex,
            selectedBackgroundColors: const [Colors.white],
            unSelectedBackgroundColors: const [Colors.transparent],
            selectedTextStyle: const TextStyle(
              color: AppColors.almostBlack200,
              fontSize: Sizes.s16,
              fontWeight: FontWeight.bold,
            ),
            unSelectedTextStyle: const TextStyle(
              color: AppColors.darkGray300,
              fontSize: Sizes.s14,
            ),
            dataTabs: _tabs,
            selectedLabelIndex: (index) {
              widget.tabIndexNotifier.value = index;

              //if (index == 0) {}
            },

            isShadowEnable: false,
            isInnerShadowEnable: false,
          ),
        );
      },
    );
  }
}
