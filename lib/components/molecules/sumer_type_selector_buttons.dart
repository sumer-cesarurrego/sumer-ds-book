import 'package:design_system/design_system.dart';
import 'package:design_system/molecules/type_selector_buttons/type_selector.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'SumerTypeSelector',
  type: SumerTypeSelectorButtons,
)
Widget sumerTypeSelector(BuildContext context) {
  final needExpand = context.knobs.boolean(
    label: 'needExpand',
    initialValue: true,
  );

  final baseString = context.knobs.string(
    label: 'Base string',
    initialValue: 'Option',
  );

  final oneTypeSelectors = <SumerTypeSelectorAbstract>[
    SumerTypeSelector(title: '$baseString 1', id: 'option-1', needExpand: needExpand),
  ];
  final twoTypeSelectors = <SumerTypeSelectorAbstract>[
    SumerTypeSelector(title: '$baseString 1', id: 'option-1', needExpand: needExpand),
    SumerTypeSelector(title: '$baseString 2', id: 'option-2', needExpand: needExpand),
  ];
  final threeTypeSelectors = <SumerTypeSelectorAbstract>[
    SumerTypeSelector(title: '$baseString 1', id: 'option-1', needExpand: needExpand),
    SumerTypeSelector(title: '$baseString 2', id: 'option-2', needExpand: needExpand),
    SumerTypeSelector(title: '$baseString 3', id: 'option-3', needExpand: needExpand),
  ];
  final fourTypeSelectors = <SumerTypeSelectorAbstract>[
    SumerTypeSelector(title: '$baseString 1', id: 'option-1', needExpand: needExpand),
    SumerTypeSelector(title: '$baseString 2', id: 'option-2', needExpand: needExpand),
    SumerTypeSelector(title: '$baseString 3', id: 'option-3', needExpand: needExpand),
    SumerTypeSelector(title: '$baseString 4', id: 'option-4', needExpand: needExpand),
  ];

  final typeSelectorKey = context.knobs.list(
    label: 'Size',
    options: [
      'oneTypeSelectors',
      'twoTypeSelectors',
      'threeTypeSelectors',
      'fourTypeSelectors',
    ],
  );

  final typeSelectors = <String, List<SumerTypeSelectorAbstract>>{
    'oneTypeSelectors': oneTypeSelectors,
    'twoTypeSelectors': twoTypeSelectors,
    'threeTypeSelectors': threeTypeSelectors,
    'fourTypeSelectors': fourTypeSelectors,
  };

  return SafeArea(
    child: Scaffold(
      body: Container(
        padding: context.sumerTheme.insets.sm.all,
        child: TypeSelectorExample(
          typeSelectors: typeSelectors[typeSelectorKey] ?? oneTypeSelectors,
          widthSpacing: context.sumerTheme.spacing.xxs,
        ),
      ),
    ),
  );
}

class TypeSelectorExample extends StatefulWidget {
  const TypeSelectorExample({
    Key? key,
    required this.typeSelectors,
    this.widthSpacing = 0,
  }) : super(key: key);

  final List<SumerTypeSelectorAbstract> typeSelectors;
  final double widthSpacing;

  @override
  State<TypeSelectorExample> createState() => _TypeSelectorExampleState();
}

class _TypeSelectorExampleState extends State<TypeSelectorExample> {
  SumerTypeSelectorAbstract? selectedTypeSelector;

  @override
  Widget build(BuildContext context) {
    return SumerTypeSelectorButtons(
      typeSelectors: widget.typeSelectors,
      onTypePressed: (typeSelector) {
        setState(() {
          selectedTypeSelector = typeSelector;
        });
      },
      selectedOrderType: selectedTypeSelector,
      widthSpacing: widget.widthSpacing,
    );
  }
}
