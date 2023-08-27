import 'package:design_system/molecules/button_navigation_button/sumer_bottom_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'With default icon',
  type: SumerBottomNavigationButton,
)
Widget sumerBottomNavigationButtonWithIcon(BuildContext context) {
  return Scaffold(
    body: Container(),
    bottomNavigationBar: SumerBottomNavigationButton(
      text: context.knobs.string(
        label: 'text',
        initialValue: 'Continue',
      ),
      onPressed: context.knobs.boolean(
        label: 'onPressed',
        initialValue: true,
      )
          ? () {}
          : null,
    ),
  );
}

@widgetbook.UseCase(
  name: 'Changed icon',
  type: SumerBottomNavigationButton,
)
Widget sumerBottomNavigationButtonWithoutIcon(BuildContext context) {
  return Scaffold(
    body: Container(),
    bottomNavigationBar: SumerBottomNavigationButton(
      text: context.knobs.string(
        label: 'text',
        initialValue: 'Continue',
      ),
      iconData: context.knobs.boolean(label: 'With icon', initialValue: false)
          ? context.knobs.list(label: 'Icons', options: [
              Icons.add,
              Icons.add_a_photo,
              Icons.add_alarm,
            ])
          : null,
      onPressed: context.knobs.boolean(
        label: 'onPressed',
        initialValue: true,
      )
          ? () {}
          : null,
    ),
  );
}
