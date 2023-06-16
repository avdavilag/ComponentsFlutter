// ignore_for_file: avoid_unnecessary_containers

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ControlWidgetType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const ControlWidgetType2({Key? key, required this.imageUrl, this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      ////// clipBehavior://////Corta las esquinas si se sale las corta y mejora las puntas////////
      clipBehavior: Clip.antiAlias,
      ///////////////////////////////////////////////////////////////////////
      ///shape: RoundedRectangleBorder aqui se pone el redondeo que necesitas de la tarjeta
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 50,
      /////shadowColor: especifica la sobra del shadowColor
      shadowColor: AppTheme.primary.withOpacity(0.9),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            ////////Aqui pones la imagen de acuerdo al ajuste necesitado de lo que necesitas
            fit: BoxFit.fill,
            ///////////////////////////////////
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name!))
        ],
      ),
    );
  }
}
