import 'package:flutter/material.dart';
typedef intValueSetter=  void Function(int value);

class RangeSelectorTextFormField extends StatelessWidget {
  const RangeSelectorTextFormField({super.key, required this.labelText, required this.intValueSetter});
  final String labelText;
  final void Function(int value) intValueSetter;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'ivalid input we accept just integer';
        }
        return null;
      },
      keyboardType:
          const TextInputType.numberWithOptions(decimal: false, signed: true),
      decoration:  InputDecoration(
          border: const OutlineInputBorder(borderRadius: BorderRadius.zero),
          labelText: labelText),
          onSaved: (newValue) => intValueSetter(int.parse(newValue ?? '')),
    );
  }
}
