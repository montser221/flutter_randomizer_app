import 'package:flutter/material.dart';
import 'package:myfirstapp/range_selector_page.dart';

void main() {
  runApp(const AppWidgit());
}

class AppWidgit extends StatelessWidget {
  const AppWidgit({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randomizor',
      home: RangeSelectorPage(),
    );
  }
}
