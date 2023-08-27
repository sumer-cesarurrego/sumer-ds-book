import 'package:design_system/atoms/button/sumer_button.abs.dart';
import 'package:design_system/atoms/button/sumer_button_size.dart';
import 'package:design_system/atoms/button/sumer_button_styles.dart';
import 'package:design_system/extensions/dimension_extension.dart';
import 'package:design_system/sumer_theme/sumer_theme_ds.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

final styleOptions = [
  PrimarySumerButtonStyle(),
  GreySumerButtonStyle(),
  PurpleSumerButtonStyle(),
  GreenSumerButtonStyle(),
  YellowSumerButtonStyle(),
];

@widgetbook.UseCase(
  name: 'All buttons',
  type: SumerButton,
)
Widget sumerAllButtons(BuildContext context) {
  final style = context.knobs.list(
    label: 'Style',
    options: styleOptions,
  );

  final size = context.knobs.list(
    label: 'Size',
    options: [
      MainSumerButtonSize(),
      SmallSumerButtonSize(),
    ],
  );

  final text = context.knobs.string(
    label: 'Text',
    initialValue: 'Continue',
  );

  final onPressed = context.knobs.boolean(
    label: 'onPressed',
    initialValue: true,
  )
      ? () {}
      : null;

  final trailingIcon = context.knobs.boolean(label: 'With trailing icon', initialValue: false)
      ? context.knobs.list(label: 'Trailing cons', options: [
          Icons.add,
          Icons.add_a_photo,
          Icons.add_alarm,
        ])
      : null;

  final leadingIcon = context.knobs.boolean(label: 'With leading icon', initialValue: false)
      ? context.knobs.list(label: 'Leading cons', options: [
          Icons.add,
          Icons.add_a_photo,
          Icons.add_alarm,
        ])
      : null;

  final isExpanded = context.knobs.boolean(label: 'Is expanded', initialValue: false);

  return Scaffold(
    body: Container(
        padding: context.sumerTheme.insets.md.all,
        child: Column(
          children: [
            SumerButton.primary(
              text: text,
              style: style,
              size: size,
              onPressed: onPressed,
              trailingIcon: trailingIcon,
              leadingIcon: leadingIcon,
              isExpanded: isExpanded,
            ),
            SizedBox(height: context.spacing.md),
            SumerButton.secondary(
              text: text,
              style: style,
              size: size,
              onPressed: onPressed,
              trailingIcon: trailingIcon,
              leadingIcon: leadingIcon,
              isExpanded: isExpanded,
            ),
            SizedBox(height: context.spacing.md),
            SumerButton.tertiary(
              text: text,
              style: style,
              size: size,
              onPressed: onPressed,
              trailingIcon: trailingIcon,
              leadingIcon: leadingIcon,
              isExpanded: isExpanded,
            ),
            SizedBox(height: context.spacing.md),
            SumerButton.ghost(
              text: text,
              style: style,
              size: size,
              onPressed: onPressed,
              trailingIcon: trailingIcon,
              leadingIcon: leadingIcon,
              isExpanded: isExpanded,
            ),
            SizedBox(height: context.spacing.md),
            SumerButton.destructive(
              text: text,
              size: size,
              onPressed: onPressed,
              trailingIcon: trailingIcon,
              leadingIcon: leadingIcon,
              isExpanded: isExpanded,
            ),
          ],
        )),
  );
}

@widgetbook.UseCase(
  name: 'Primary',
  type: SumerButton,
)
Widget sumerPrimaryButton(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: context.sumerTheme.insets.md.all,
      child: SumerButton.primary(
        text: context.knobs.string(
          label: 'Text',
          initialValue: 'Continue',
        ),
        style: context.knobs.list(
          label: 'Style',
          options: styleOptions,
        ),
        size: context.knobs.list(
          label: 'Size',
          options: [
            MainSumerButtonSize(),
            SmallSumerButtonSize(),
          ],
        ),
        onPressed: context.knobs.boolean(
          label: 'onPressed',
          initialValue: true,
        )
            ? () {}
            : null,
        trailingIcon: context.knobs.boolean(label: 'With trailing icon', initialValue: false)
            ? context.knobs.list(label: 'Trailing cons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        leadingIcon: context.knobs.boolean(label: 'With leading icon', initialValue: false)
            ? context.knobs.list(label: 'Lading icons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        isExpanded: context.knobs.boolean(label: 'Is expanded', initialValue: false),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Secondary',
  type: SumerButton,
)
Widget sumerSecondaryButton(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: context.sumerTheme.insets.md.all,
      child: SumerButton.secondary(
        text: context.knobs.string(
          label: 'Text',
          initialValue: 'Continue',
        ),
        style: context.knobs.list(
          label: 'Style',
          options: styleOptions,
        ),
        size: context.knobs.list(
          label: 'Size',
          options: [
            MainSumerButtonSize(),
            SmallSumerButtonSize(),
          ],
        ),
        onPressed: context.knobs.boolean(
          label: 'onPressed',
          initialValue: true,
        )
            ? () {}
            : null,
        trailingIcon: context.knobs.boolean(label: 'With trailing icon', initialValue: false)
            ? context.knobs.list(label: 'Trailing cons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        leadingIcon: context.knobs.boolean(label: 'With leading icon', initialValue: false)
            ? context.knobs.list(label: 'Lading icons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        isExpanded: context.knobs.boolean(label: 'Is expanded', initialValue: false),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Terciary',
  type: SumerButton,
)
Widget sumerTerciaryButton(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: context.sumerTheme.insets.md.all,
      child: SumerButton.tertiary(
        text: context.knobs.string(
          label: 'Text',
          initialValue: 'Continue',
        ),
        style: context.knobs.list(
          label: 'Style',
          options: styleOptions,
        ),
        size: context.knobs.list(
          label: 'Size',
          options: [
            MainSumerButtonSize(),
            SmallSumerButtonSize(),
          ],
        ),
        onPressed: context.knobs.boolean(
          label: 'onPressed',
          initialValue: true,
        )
            ? () {}
            : null,
        trailingIcon: context.knobs.boolean(label: 'With trailing icon', initialValue: false)
            ? context.knobs.list(label: 'Trailing cons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        leadingIcon: context.knobs.boolean(label: 'With leading icon', initialValue: false)
            ? context.knobs.list(label: 'Lading icons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        isExpanded: context.knobs.boolean(label: 'Is expanded', initialValue: false),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Terciary without padding',
  type: SumerButton,
)
Widget sumerTerciaryWithoutPaddingButton(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: context.sumerTheme.insets.md.all,
      child: SumerButton.ghost(
        text: context.knobs.string(
          label: 'Text',
          initialValue: 'Continue',
        ),
        style: context.knobs.list(
          label: 'Style',
          options: styleOptions,
        ),
        size: context.knobs.list(
          label: 'Size',
          options: [
            MainSumerButtonSize(),
            SmallSumerButtonSize(),
          ],
        ),
        onPressed: context.knobs.boolean(
          label: 'onPressed',
          initialValue: true,
        )
            ? () {}
            : null,
        trailingIcon: context.knobs.boolean(label: 'With trailing icon', initialValue: false)
            ? context.knobs.list(label: 'Trailing cons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        leadingIcon: context.knobs.boolean(label: 'With leading icon', initialValue: false)
            ? context.knobs.list(label: 'Lading icons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        isExpanded: context.knobs.boolean(label: 'Is expanded', initialValue: false),
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Destructive',
  type: SumerButton,
)
Widget sumerDestructiveButton(BuildContext context) {
  return Scaffold(
    body: Container(
      padding: context.sumerTheme.insets.md.all,
      child: SumerButton.destructive(
        text: context.knobs.string(
          label: 'Text',
          initialValue: 'Continue',
        ),
        size: context.knobs.list(
          label: 'Size',
          options: [
            MainSumerButtonSize(),
            SmallSumerButtonSize(),
          ],
        ),
        onPressed: context.knobs.boolean(
          label: 'onPressed',
          initialValue: true,
        )
            ? () {}
            : null,
        trailingIcon: context.knobs.boolean(label: 'With trailing icon', initialValue: false)
            ? context.knobs.list(label: 'Trailing cons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        leadingIcon: context.knobs.boolean(label: 'With leading icon', initialValue: false)
            ? context.knobs.list(label: 'Lading icons', options: [
                Icons.add,
                Icons.add_a_photo,
                Icons.add_alarm,
              ])
            : null,
        isExpanded: context.knobs.boolean(label: 'Is expanded', initialValue: false),
      ),
    ),
  );
}
