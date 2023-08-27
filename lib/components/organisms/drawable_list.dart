import 'package:design_system/design_system.dart';
import 'package:design_system/molecules/list_item/drawable_list_item.dart';
import 'package:design_system/organisms/drawable_list.dart';
import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'DrawableList',
  type: DrawableList,
)
Widget drawableList(BuildContext context) {
  final items = [
    {
      'title':
          'Exclusivo y Sofisticado Sistema de Sonido Inalámbrico de Alta Resolución con Tecnología de Cancelación de Ruido y Conexión Multiplataforma',
      'subtitle': r'$50.000',
      'imageUrl':
          'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/9989cd60-470b-4c37-b61c-d94a019819ce/freak-4-basketball-shoes-zmXv3D.png',
    },
    {
      'title': 'Item 2',
      'subtitle': 'Subtitle 2',
      'imageUrl': r'https://images.vans.com/is/image/VansEU/VN0A3WMAVNE-HERO?$PDP-FULL-IMAGE$',
    },
    {
      'title': 'Item 3',
      'subtitle': 'Subtitle 3',
      'imageUrl': 'https://oqshoes.com/wp-content/uploads/2023/08/TN-EXHALAR2-NARANJA-X-TRIGO1-scaled.jpg',
    },
    {
      'title': 'Item 4',
    }
  ];
  return Scaffold(
    backgroundColor: context.sumerTheme.colors.grey.gW,
    body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: DrawableList(
          items: items.map(
            (e) {
              final index = items.indexOf(e);
              return DrawableListItem(
                key: ValueKey(index),
                title: e['title'] ?? '',
                subtitle: e['subtitle'],
                index: index,
                imageUrl: e['imageUrl'],
              );
            },
          ).toList(),
        ),
      ),
    ),
  );
}
