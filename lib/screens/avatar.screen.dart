import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andy'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: const CircleAvatar(
                child: Text('AD'), backgroundColor: Colors.black),
          )
        ],
      ),
      body: const Center(
          child: CircleAvatar(
        maxRadius: 110,
        backgroundImage: NetworkImage(
            'https://s03.s3c.es/imag/_v0/1762x1138/c/9/e/Captura-de-Pantalla-2022-11-18-a-las-161624.jpg'),
      )),
    );
  }
}
