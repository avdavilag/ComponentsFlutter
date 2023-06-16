import 'package:fl_components/models/models.dart';
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOption = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Componentes en Flutter'),
          // elevation: 0,
        ),
        body: ListView.separated(
            itemBuilder: (context, index) => ListTile(
                  leading:
                      Icon(menuOption[index].icon, color: AppTheme.primary),
                  title: Text(menuOption[index].name),
                  onTap: () {
                    Navigator.pushNamed(context, menuOption[index].route);

                    //////////Otra forma de llamar a una nueva pagina//////////////////////
                    ///////////////////////////////////////////////////////////////////////
                    // final route = MaterialPageRoute(
                    //   builder: (context) => const Listview1Screen(),
                    // );
                    // Navigator.push(context, route);
                    ///////////////////////////////////////////////////////////////////////
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: menuOption.length));
  }
}
