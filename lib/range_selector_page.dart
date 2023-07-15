import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:myfirstapp/generate_random_number_page.dart';
import 'package:myfirstapp/range_selector_form.dart';

class RangeSelectorPage extends HookWidget {
  final myfromkey = GlobalKey<FormState>();
  RangeSelectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text(
          'Select Range',
        ),
      ),
      body: Center(
        child: RangeSelectorForm(
          myfromkey: myfromkey,
          minValueSetter: (int value) => min.value = value,
          maxValueSetter: (int value) => max.value = value,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (myfromkey.currentState!.validate()) {
            myfromkey.currentState?.save();
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return GererateRandomNumperPage(
                mymin: min.value,
                mymax: max.value,
              );
            }));
          }
        },
        child: const Icon(Icons.arrow_forward),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
