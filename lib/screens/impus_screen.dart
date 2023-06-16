import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class InpusScreen extends StatelessWidget {
  const InpusScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': 'Anderson',
      'last_name': 'Davila',
      'email': 'andersonypk@gmail.com',
      'password': '123456',
      'role': 'Admin'
    };

    return Scaffold(
        appBar: AppBar(
          title: const Text('Inputs y Forms'),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Form(
                key: myFormKey,
                child: Column(
                  children: [
                    CustomInputFieldScreen(
                      labelText: 'Nombre',
                      helperText: 'Nombre de Usuario ',
                      formProperty: 'first_name',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    CustomInputFieldScreen(
                      labelText: 'Apellido',
                      helperText: 'Apellido del Usuario',
                      formProperty: 'last_name',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    CustomInputFieldScreen(
                      labelText: 'Correo',
                      helperText: 'Correo del Usuario',
                      keyboardType: TextInputType.emailAddress,
                      formProperty: 'email',
                      formValues: formValues,
                    ),
                    CustomInputFieldScreen(
                      labelText: 'Contraseña ',
                      helperText: 'Contraseña del Usuario',
                      banderaPassword: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(height: 30),
                    DropdownButtonFormField<String>(
                        value: 'Admin',
                        items: const [
                          DropdownMenuItem(
                            value: 'Admin',
                            child: Text('Admin'),
                          ),
                          DropdownMenuItem(
                            value: 'SuperUser',
                            child: Text('SuperUser'),
                          ),
                          DropdownMenuItem(
                            value: 'Developer',
                            child: Text('Developer'),
                          ),
                          DropdownMenuItem(
                            value: 'Jr. Developer',
                            child: Text('Jr. Developer'),
                          )
                        ],
                        onChanged: (value) {
                          print(value);
                          formValues['role'] = value ?? 'Admin';
                        }),
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))),
                      onPressed: () {
                        ///////FocusScope:  Minimiza el teclado
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no Valido');
                          return;
                        }
                        ;
                        print(formValues);
                        //Todo imprimir valores del formulario
                      },
                    )
                  ],
                ),
              )),
        ));
  }
}
