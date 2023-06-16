import 'package:flutter/material.dart';

class CustomInputFieldScreen extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool banderaPassword;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomInputFieldScreen(
      {Key? key,
      this.hintText,
      this.labelText,
      this.helperText,
      this.icon,
      this.suffixIcon,
      this.keyboardType,
      this.banderaPassword = false,
      required this.formProperty,
      required this.formValues})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        autofocus: false,
        initialValue: '',
        textCapitalization: TextCapitalization.words,
        //// keyboardType: hace aparecer onbligatoriamente el @ en el teclado del telefono movil
        // keyboardType: TextInputType.emailAddress,
        keyboardType: keyboardType,
        ////Hace que los caracteres de la contraseña se vuelvan astericos ejemplo Password: ****
        obscureText: banderaPassword,
        onChanged: (value) =>
          formValues[formProperty] = value,      
        validator: (value) {
          if (value == null) return 'Este campo es requerido';
          return value.length < 3 ? 'Minimo de 3 letras' : null;
          // return 'Hola Mundo';
        },
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
            hintText: hintText,
            labelText: labelText,
            helperText: helperText,
            // prefixIcon: Icon(Icons.verified_user_outlined),
            suffixIcon: suffixIcon == null ? null : Icon(suffixIcon),
            icon: icon == null ? null : Icon(icon)));
  }
}
