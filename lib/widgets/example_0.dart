import 'package:flutter/material.dart';

class Example0 extends StatelessWidget {
  const Example0({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AppBar'),
          backgroundColor: Colors.blue,
        ),
        body: Container());
  }
}
