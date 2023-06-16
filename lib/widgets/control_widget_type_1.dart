import 'package:flutter/material.dart';
import '../theme/app_theme.dart';

class ControlWidgetType1 extends StatelessWidget {
  const ControlWidgetType1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
            title: Text('Mundial México 1970.'),
            subtitle: Text(
                'La Copa Mundial de la FIFA México 1970 fue la novena edición de la Copa Mundial de Fútbol. Se celebró en México, entre el 31 de mayo y el 21 de junio. Un total de 16 selecciones nacionales participaron en la ronda final, siendo reunidas en cuatro grupos de 4 equipos, luego los dos primeros de cada sector avanzaron a la ronda de cuartos de final.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
