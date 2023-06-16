import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  const Listview1Screen({Key? key}) : super(key: key);
  final optios=const ['Megaman','Metal Gear','Super Smash', 'Final Fantasty'];
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      appBar: AppBar(
      title: const Text('ListView Type One'),
    ),
      body:  ListView(
          children: [
            ...optios.map(
              (game) => ListTile(                
                title: Text(game),
                trailing: const Icon(Icons.arrow_forward_ios_outlined),
              )
              ).toList(),
            


        ],
      )      
    );
  }
}