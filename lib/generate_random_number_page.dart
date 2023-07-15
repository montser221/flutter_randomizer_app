import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class GererateRandomNumperPage extends HookWidget {
  final int mymin;
  final int mymax;

  GererateRandomNumperPage({
    Key? key,
    required this.mymin,
    required this.mymax
  }) : super(key: key);


  final random = Random();


  @override
  Widget build(BuildContext context) {
    final generatedNumber = useState<int?>(null);
    return Scaffold(
      appBar: AppBar(
        title: const Text('randomizer'),
      ),
      body:  Center(
        child: Text(

          generatedNumber.value?.toString() ?? 'Genarate a number' 
          ,
          style: const TextStyle(fontSize: 32),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: ()=>generatedNumber.value = mymin + random.nextInt((mymax + 1) - mymin), 
        label: const Text('Generate')
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  
}
