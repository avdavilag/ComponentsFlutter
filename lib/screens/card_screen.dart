import 'package:fl_components/widgets/control_widget_type_2.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Card Widget'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            ControlWidgetType1(),
            SizedBox(height: 10),
            ControlWidgetType2(
                imageUrl:
                    'https://1.bp.blogspot.com/-hHZAeUG-Z7c/U1_A6LnylAI/AAAAAAAAMMw/vkv1GtXTZi0/s1600/MEXICO+1970+-+JUANITO.jpg',
                name: 'Mascota del Mundial de futbol'),
            SizedBox(height: 10),
            ControlWidgetType2(
                imageUrl:
                    'https://a.espncdn.com/photo/2020/0601/r704337_1296x729_16-9.jpg',
                // name: 'Alemania vs Uruguay México 1970'
                ),
            SizedBox(height: 10),
            ControlWidgetType2(
                imageUrl:
                    'https://digitalhub.fifa.com/transform/fc151b41-b0fb-430a-a1f7-bc8dda861a2f/HLS_1970_Brazil_Uruguay_SF_Hero',
                name: 'Brasil vs Uruguay México 1970'),
            SizedBox(height: 100),
          ],
        ));
  }
}
