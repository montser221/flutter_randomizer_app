import 'package:flutter/material.dart';
import 'package:myfirstapp/range_selector_text_form_field.dart';

typedef intValueSetter = void Function(int value);

class RangeSelectorForm extends StatelessWidget {
  const RangeSelectorForm({
    super.key,
    required this.myfromkey,
    required this.minValueSetter,
    required this.maxValueSetter,
  });

  final intValueSetter minValueSetter;
  final intValueSetter maxValueSetter;
  final GlobalKey<FormState> myfromkey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: myfromkey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RangeSelectorTextFormField(
              labelText: 'Minimum',
              intValueSetter: minValueSetter,
            ),
            const SizedBox(height: 12),
            RangeSelectorTextFormField(
              labelText: 'Maximum',
              intValueSetter: maxValueSetter,
            ),
          ],
        ),
      ),
    );
  }
}
