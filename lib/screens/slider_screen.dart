import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

double _sliderValue = 100;
bool _sliderEnable = true;

class _SliderScreenState extends State<SliderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider & Checks'),
      ),
      // Es un Widget SingleChildScrollView: al momento que ya pierdas la redimension puedes utilizar esto del Single por que si la imagen esta pequeña
      // Si la imagen esta muy grande esto le ayuda hacer un scrolll
      body: Column(children: [
        Slider.adaptive(
            min: 50,
            max: 400,
            activeColor: AppTheme.primary,
            value: _sliderValue,
            // divisions: 10,
            onChanged: _sliderEnable
                ? (value) {
                    _sliderValue = value;

                    setState(() {});
                  }
                : null),

        ///CheckBox: Normal
        // Checkbox(
        //   value: _sliderEnable,
        //   onChanged: ((value) {
        //     _sliderEnable = value ?? true;
        //     setState(() {});
        //   }),
        // ),

        //////////////
        ////////////////////
        // Switch(
        // value: _sliderEnable,
        // onChanged: (value) => setState(() {
        //       _sliderEnable = value ?? true;
        //     })),
////////////////////////////////////
        ///CheckboxListTile: Otro que se maneja como CheckboxListTile
        CheckboxListTile(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnable,
          onChanged: (value) => setState(() {
            _sliderEnable = value ?? true;
          }),
        ),

///////////////////////////////////////
        SwitchListTile.adaptive(
          activeColor: AppTheme.primary,
          title: const Text('Habilitar Slider'),
          value: _sliderEnable,
          onChanged: (value) => setState(() {
            _sliderEnable = value ?? true;
          }),
        ),
///////////////////////////////////////AboutListTile pone las diferentes especificaciones que tiene acerca de la aplicacion como licencias y librerias que utiliza

        const AboutListTile(),
////////////////////////////////////////////
        // Otra forma de controlar las dimensiones de la pagina Es un Widget Expanded: al momento que ya pierdas la redimension puedes utilizar esto del Single por que si la imagen esta pequeña
        // Si la imagen esta muy grande esto le ayuda hacer un scrolll
        Expanded(
          child: SingleChildScrollView(
            child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/736x/b6/16/78/b61678d814170804d472365fa4e42ab0.jpg'),
                fit: BoxFit.contain,
                width: _sliderValue),
          ),
        ),
        const SizedBox(
          height: 50,
        )
      ]),
    );
  }
}
