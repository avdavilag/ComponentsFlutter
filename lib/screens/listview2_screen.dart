import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);
  final optios = const [
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasty'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Type Two'),
        // elevation: 0,
        // backgroundColor: Colors.indigo,
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
                title: Text(optios[index]),
                trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Colors.indigo),
                onTap: () {
                  final game = optios[index];
                  print('Games: ${game}');
                },
              ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: optios.length),
    );
  }
}
