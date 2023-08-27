import 'package:design_system/atoms/prime_badge/prime_badge_wd.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Prime Badge',
  type: PrimeBadge,
)
Widget primeBadge(BuildContext context) {
  return Scaffold(
    body: SafeArea(
      child: Padding(
        padding: context.sumerTheme.insets.sm.all,
        child: PrimeBadge(
          size: context.knobs.list(label: 'Size', options: [32, 44, 56]),
          shadowHidden: context.knobs.boolean(label: 'Shadow hidden'),
        ),
      ),
    ),
  );
}
