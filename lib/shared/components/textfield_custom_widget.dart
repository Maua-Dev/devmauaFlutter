import 'package:flutter/material.dart';

class TextFieldCustomWidget extends StatelessWidget {
  final String? labelText;
  final bool obscureText;
  final IconData? iconData;
  final void Function(String)? onChanged;

  const TextFieldCustomWidget(
      {Key? key,
      this.labelText,
      this.obscureText = false,
      this.iconData,
      this.onChanged})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(iconData),
      ),
    );
  }
}
