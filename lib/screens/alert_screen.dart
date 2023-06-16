import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

/////Esto es para IOS recuerda que cupertino es solo para IOS por favor
  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        /////barrierDismissible::::::: Hacer clic en la parte negra para que se salga de pantalla de Dialogo/////
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: const Column(
                mainAxisSize: MainAxisSize.min,
                children: [SizedBox(height: 10), FlutterLogo(size: 100)]),
            actions: [
              TextButton(

                  ///Que regrese a la pagina Anterior
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar en IOS',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(

                  ///Que regrese a la pagina Anterior
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok en Ios'))
            ],
          );
        });
  }

  void displaDialogAndroid(BuildContext context) {
    print('Andy');
    showDialog(
        /////barrierDismissible::::::: Hacer clic en la parte negra para que se salga de pantalla de Dialogo/////
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            title: const Center(child: Text('Titulo')),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            content: const Column(mainAxisSize: MainAxisSize.min, children: [
              Text('Andy el numero 1'),
              SizedBox(height: 10),
              FlutterLogo(size: 100)
            ]),
            actions: [
              TextButton(

                  ///Que regrese a la pagina Anterior
                  onPressed: () => Navigator.pop(context),
                  child: const Text(
                    'Cancelar',
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(

                  ///Que regrese a la pagina Anterior
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Ok'))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
              ////Codigo para CCS de elevation Button permite quitar las puntas del boton
              // style: ElevatedButton.styleFrom(
              //     primary: Colors.indigo,
              //     shape: const StadiumBorder(),
              //     elevation: 0),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Text('Mostrar Alerta', style: TextStyle(fontSize: 16)),
              ),

              ///Esto hace la negacion de plataformas del ALert Dialog
              onPressed: () => Platform.isAndroid
                  ? displaDialogAndroid(context)
                  : displayDialogIos(context))),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),

          ///Que regrese al ultima pantalla anterior
          onPressed: () => Navigator.pop(context)),
    );
  }
}
