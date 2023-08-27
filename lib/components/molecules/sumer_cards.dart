import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'Sumercard default',
  type: SumerCard,
)
Widget sumerCardDefault(BuildContext context) {
  return SumerCard(
    margin: const EdgeInsets.all(8.0),
    padding: const EdgeInsets.all(8.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text('Content'),
        Text('More content'),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Sumercard Basic Action',
  type: SumerCard,
)
Widget sumerCardActionCard(BuildContext context) {
  return SumerCard.actionCard(
    onPressed: () {},
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(10),
    leading: const CircleAvatar(),
    trailing: const Icon(Icons.chevron_right_rounded),
    content: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('Content'),
          Text('More content'),
        ],
      ),
    ),
  );
}

@widgetbook.UseCase(
  name: 'Sumercard Left Border',
  type: SumerCard,
)
Widget sumerCardLeftBorder(BuildContext context) {
  return SumerCard.leftBorderCard(
    margin: EdgeInsets.all(context.sumerTheme.spacing.sm),
    padding: EdgeInsets.all(context.sumerTheme.spacing.sm),
    backgroundColor: SumerColors.greyW,
    borderColor: context.knobs.list(label: 'BorderColor', options: [
      SumerColors.yellowMain,
      SumerColors.greenMain,
      SumerColors.redMain,
    ]),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(context.knobs.string(
          label: 'text',
          initialValue: 'This is a text inside a card',
        )),
      ],
    ),
  );
}

@widgetbook.UseCase(
  name: 'Sumercard Left Border Action',
  type: SumerCard,
)
Widget sumerCardLeftBorderAction(BuildContext context) {
  return SumerCard.leftBorderActionCard(
    backgroundColor: SumerColors.greyW,
    margin: const EdgeInsets.all(10),
    leftBorderColor: SumerColors.green2,
    leftBorderGradient: SumerColors.blueBerryGradient,
    leading: Icon(
      Icons.info_outline_rounded,
      color: SumerColors.primaryMain,
    ),
    trailing: GestureDetector(
      child: Icon(Icons.chevron_right_rounded),
    ),
    actions: const [
      TextPrimary(
        text: 'Action 1',
        color: SumerColors.primaryMain,
      ),
      TextPrimary(
        text: 'Action 2',
        color: SumerColors.primaryMain,
      ),
      TextPrimary(
        text: 'Action 3',
        color: SumerColors.primaryMain,
      ),
    ],
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: const [
        Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'),
        Text('More content'),
      ],
    ),
  );
}
