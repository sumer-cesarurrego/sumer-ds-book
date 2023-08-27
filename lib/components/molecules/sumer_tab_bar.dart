import 'package:design_system/atoms/tab/sumer_tab.dart';
import 'package:design_system/molecules/tab_bar/sumer_tab_bar.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SumerTabBar default',
  type: SumerTabBar,
)
Widget sumerTabBarDefault(BuildContext context) {
  final baseString = context.knobs.string(
    label: 'Base string',
    initialValue: 'Option',
  );

  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(value),
        duration: const Duration(milliseconds: 200),
      ),
    );
  }

  final oneOption = [SumerTab(text: '$baseString 1')];

  final twoOption = [SumerTab(text: '$baseString 1'), SumerTab(text: '$baseString 2')];

  final threeOption = [
    SumerTab(text: '$baseString 1'),
    SumerTab(text: '$baseString 2'),
    SumerTab(text: '$baseString 3'),
  ];

  final fiveOption = [
    SumerTab(text: '$baseString 1'),
    SumerTab(text: '$baseString 2'),
    SumerTab(text: '$baseString 3'),
    SumerTab(text: '$baseString 4'),
    SumerTab(text: '$baseString 5'),
  ];

  final typeSelectorKey = context.knobs.list(
    label: 'Size',
    options: [
      'oneOption',
      'twoOption',
      'threeOption',
      'fiveOption',
    ],
  );

  final options = <String, List<SumerTab>>{
    'oneOption': oneOption,
    'twoOption': twoOption,
    'threeOption': threeOption,
    'fiveOption': fiveOption,
  };

  return DefaultTabController(
    length: options[typeSelectorKey]!.length,
    child: Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(78),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SumerTabBar(
              tabs: options[typeSelectorKey]!,
            ),
          ),
        ),
      ),
      body: TabBarView(
        children: options[typeSelectorKey]!.map(
          (SumerTab tab) {
            return Center(
              child: Text(
                tab.text,
              ),
            );
          },
        ).toList(),
      ),
    ),
  );
}
